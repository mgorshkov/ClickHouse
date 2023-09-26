#include "StorageSystemS3Queue.h"

#if USE_AWS_S3

#include <Access/ContextAccess.h>
#include <DataTypes/DataTypeString.h>
#include <DataTypes/DataTypesNumber.h>
#include <DataTypes/DataTypeNullable.h>
#include <DataTypes/DataTypeDateTime.h>
#include <DataTypes/DataTypeMap.h>
#include <Interpreters/Cache/FileCache.h>
#include <Interpreters/Cache/FileSegment.h>
#include <Interpreters/Cache/FileCacheFactory.h>
#include <Interpreters/Context.h>
#include <Interpreters/ProfileEventsExt.h>
#include <Storages/S3Queue/S3QueueFilesMetadata.h>
#include <Storages/S3Queue/S3QueueMetadataFactory.h>
#include <Storages/S3Queue/StorageS3Queue.h>
#include <Disks/IDisk.h>


namespace DB
{

NamesAndTypesList StorageSystemS3Queue::getNamesAndTypes()
{
    return {
        {"zookeeper_path", std::make_shared<DataTypeString>()},
        {"file_name", std::make_shared<DataTypeString>()},
        {"rows_processed", std::make_shared<DataTypeUInt64>()},
        {"status", std::make_shared<DataTypeString>()},
        {"processing_start_time", std::make_shared<DataTypeNullable>(std::make_shared<DataTypeDateTime>())},
        {"processing_end_time", std::make_shared<DataTypeNullable>(std::make_shared<DataTypeDateTime>())},
        {"ProfileEvents", std::make_shared<DataTypeMap>(std::make_shared<DataTypeString>(), std::make_shared<DataTypeUInt64>())},
    };
}

StorageSystemS3Queue::StorageSystemS3Queue(const StorageID & table_id_)
    : IStorageSystemOneBlock(table_id_)
{
}

void StorageSystemS3Queue::fillData(MutableColumns & res_columns, ContextPtr, const SelectQueryInfo &) const
{
    for (const auto & [zookeeper_path, metadata] : S3QueueMetadataFactory::instance().getAll())
    {
        for (const auto & [file_name, file_status] : metadata->getFileStateses())
        {
            size_t i = 0;
            res_columns[i++]->insert(zookeeper_path);
            res_columns[i++]->insert(file_name);
            res_columns[i++]->insert(file_status->processed_rows);
            res_columns[i++]->insert(magic_enum::enum_name(file_status->state));

            if (file_status->processing_start_time)
                res_columns[i++]->insert(file_status->processing_start_time);
            else
                res_columns[i++]->insertDefault();
            if (file_status->processing_end_time)
                res_columns[i++]->insert(file_status->processing_end_time);
            else
                res_columns[i++]->insertDefault();

            ProfileEvents::dumpToMapColumn(file_status->profile_counters.getPartiallyAtomicSnapshot(), res_columns[i++].get(), true);
        }
    }
}

}

#endif
