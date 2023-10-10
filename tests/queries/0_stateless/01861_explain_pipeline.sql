DROP TABLE IF EXISTS test;
CREATE TABLE test(a Int, b Int) Engine=ReplacingMergeTree order by a SETTINGS index_granularity = 8192, index_granularity_bytes = '10Mi';
INSERT INTO test select number, number from numbers(5);
INSERT INTO test select number, number from numbers(5,2);
set max_threads =1;
explain pipeline select * from test final SETTINGS use_skipping_final = 0;
select * from test final;
set max_threads =2;
explain pipeline select * from test final SETTINGS use_skipping_final = 0;
DROP TABLE test;
