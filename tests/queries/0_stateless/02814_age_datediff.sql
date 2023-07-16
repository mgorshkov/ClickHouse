
-- DateTime64 vs DateTime64 with fractional part
SELECT age('microsecond', toDateTime64('2015-08-18 20:30:36.100200005', 9, 'UTC'), toDateTime64('2015-08-18 20:30:41.200400005', 9, 'UTC'));
SELECT age('microsecond', toDateTime64('2015-08-18 20:30:36.100200005', 9, 'UTC'), toDateTime64('2015-08-18 20:30:41.200400004', 9, 'UTC'));

SELECT age('millisecond', toDateTime64('2015-08-18 20:30:36.450299', 6, 'UTC'), toDateTime64('2015-08-18 20:30:41.550299', 6, 'UTC'));
SELECT age('millisecond', toDateTime64('2015-08-18 20:30:36.450299', 6, 'UTC'), toDateTime64('2015-08-18 20:30:41.550298', 6, 'UTC'));

SELECT age('second', toDateTime64('2023-03-01 19:18:36.999003', 6, 'UTC'), toDateTime64('2023-03-01 19:18:41.999002', 6, 'UTC'));
SELECT age('second', toDateTime64('2023-03-01 19:18:36.999', 3, 'UTC'), toDateTime64('2023-03-01 19:18:41.001', 3, 'UTC'));

SELECT age('minute', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-01 20:35:36.300', 3, 'UTC'));
SELECT age('minute', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-01 20:35:36.100', 3, 'UTC'));
SELECT age('minute', toDateTime64('2015-01-01 20:30:36.200101', 6, 'UTC'), toDateTime64('2015-01-01 20:35:36.200100', 6, 'UTC'));

SELECT age('hour', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-01 23:30:36.200', 3, 'UTC'));
SELECT age('hour', toDateTime64('2015-01-01 20:31:36.200', 3, 'UTC'), toDateTime64('2015-01-01 23:30:36.200', 3, 'UTC'));
SELECT age('hour', toDateTime64('2015-01-01 20:30:37.200', 3, 'UTC'), toDateTime64('2015-01-01 23:30:36.200', 3, 'UTC'));
SELECT age('hour', toDateTime64('2015-01-01 20:30:36.300', 3, 'UTC'), toDateTime64('2015-01-01 23:30:36.200', 3, 'UTC'));
SELECT age('hour', toDateTime64('2015-01-01 20:30:36.200101', 6, 'UTC'), toDateTime64('2015-01-01 23:30:36.200100', 6, 'UTC'));

SELECT age('day', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-04 20:30:36.200', 3, 'UTC'));
SELECT age('day', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-04 19:30:36.200', 3, 'UTC'));
SELECT age('day', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-04 20:28:36.200', 3, 'UTC'));
SELECT age('day', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-04 20:30:35.200', 3, 'UTC'));
SELECT age('day', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-04 20:30:36.199', 3, 'UTC'));
SELECT age('day', toDateTime64('2015-01-01 20:30:36.200101', 6, 'UTC'), toDateTime64('2015-01-04 20:30:36.200100', 6, 'UTC'));

SELECT age('week', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-15 20:30:36.200', 3, 'UTC'));
SELECT age('week', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-15 19:30:36.200', 3, 'UTC'));
SELECT age('week', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-15 20:29:36.200', 3, 'UTC'));
SELECT age('week', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-15 20:30:35.200', 3, 'UTC'));
SELECT age('week', toDateTime64('2015-01-01 20:30:36.200', 3, 'UTC'), toDateTime64('2015-01-15 20:30:36.100', 3, 'UTC'));
SELECT age('week', toDateTime64('2015-01-01 20:30:36.200101', 6, 'UTC'), toDateTime64('2015-01-15 20:30:36.200100', 6, 'UTC'));

SELECT age('month', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-05-02 20:30:36.200', 3, 'UTC'));
SELECT age('month', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-05-01 20:30:36.200', 3, 'UTC'));
SELECT age('month', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-05-02 19:30:36.200', 3, 'UTC'));
SELECT age('month', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-05-02 20:29:36.200', 3, 'UTC'));
SELECT age('month', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-05-02 20:30:35.200', 3, 'UTC'));
SELECT age('month', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-05-02 20:30:36.100', 3, 'UTC'));
SELECT age('month', toDateTime64('2015-01-02 20:30:36.200101', 6, 'UTC'), toDateTime64('2016-05-02 20:30:36.200100', 6, 'UTC'));

SELECT age('quarter', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-04-02 20:30:36.200', 3, 'UTC'));
SELECT age('quarter', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-04-01 20:30:36.200', 3, 'UTC'));
SELECT age('quarter', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-04-02 19:30:36.200', 3, 'UTC'));
SELECT age('quarter', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-04-02 20:29:36.200', 3, 'UTC'));
SELECT age('quarter', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-04-02 20:30:35.200', 3, 'UTC'));
SELECT age('quarter', toDateTime64('2015-01-02 20:30:36.200', 3, 'UTC'), toDateTime64('2016-04-02 20:30:36.100', 3, 'UTC'));
SELECT age('quarter', toDateTime64('2015-01-02 20:30:36.200101', 6, 'UTC'), toDateTime64('2016-04-02 20:30:36.200100', 6, 'UTC'));

SELECT age('year', toDateTime64('2015-02-02 20:30:36.200', 3, 'UTC'), toDateTime64('2023-02-02 20:30:36.200', 3, 'UTC'));
SELECT age('year', toDateTime64('2015-02-02 20:30:36.200', 3, 'UTC'), toDateTime64('2023-01-02 20:30:36.200', 3, 'UTC'));
SELECT age('year', toDateTime64('2015-02-02 20:30:36.200', 3, 'UTC'), toDateTime64('2023-02-01 20:30:36.200', 3, 'UTC'));
SELECT age('year', toDateTime64('2015-02-02 20:30:36.200', 3, 'UTC'), toDateTime64('2023-02-02 19:30:36.200', 3, 'UTC'));
SELECT age('year', toDateTime64('2015-02-02 20:30:36.200', 3, 'UTC'), toDateTime64('2023-02-02 20:29:36.200', 3, 'UTC'));
SELECT age('year', toDateTime64('2015-02-02 20:30:36.200', 3, 'UTC'), toDateTime64('2023-02-02 20:30:35.200', 3, 'UTC'));
SELECT age('year', toDateTime64('2015-02-02 20:30:36.200', 3, 'UTC'), toDateTime64('2023-02-02 20:30:36.100', 3, 'UTC'));
SELECT age('year', toDateTime64('2015-02-02 20:30:36.200101', 6, 'UTC'), toDateTime64('2023-02-02 20:30:36.200100', 6, 'UTC'));

-- DateTime64 vs DateTime64 with negative time
SELECT age('millisecond', toDateTime64('1969-12-31 23:59:58.001', 3, 'UTC'), toDateTime64('1970-01-01 00:00:00.350', 3, 'UTC'));
SELECT age('second', toDateTime64('1969-12-31 23:59:58.001', 3, 'UTC'), toDateTime64('1970-01-01 00:00:00.35', 3, 'UTC'));
SELECT age('second', toDateTime64('1969-12-31 23:59:50.001', 3, 'UTC'), toDateTime64('1969-12-31 23:59:55.002', 3, 'UTC'));
SELECT age('second', toDateTime64('1969-12-31 23:59:50.003', 3, 'UTC'), toDateTime64('1969-12-31 23:59:55.002', 3, 'UTC'));

SELECT DATEDIFF(millisecond, '2021-01-01'::Date, '2021-01-02'::Date);
SELECT DATEDIFF(millisecond, '2021-01-01'::Date, '2021-01-03'::Date32);
SELECT DATEDIFF(millisecond, '2021-01-01'::Date, '2021-01-02 00:01:01'::DateTime);
SELECT DATEDIFF(millisecond, '2021-01-01'::Date, '2021-01-02 00:00:01.299'::DateTime64);
SELECT DATEDIFF(millisecond, '2021-01-01 23:59:59.299'::DateTime64, '2021-01-02'::Date);
SELECT DATEDIFF(millisecond, '2021-01-01 23:59:59.299999'::DateTime64(6), '2021-01-02'::Date);
SELECT DATEDIFF(millisecond, '2021-01-01 23:59:59.2'::DateTime64(1), '2021-01-02'::Date);
SELECT DATEDIFF(microsecond, '2021-01-01 23:59:59.899999'::DateTime64(6), '2021-01-02 00:01:00.100200300'::DateTime64(9));

SELECT DATEDIFF(microsecond, '1969-12-31 23:59:59.999950'::DateTime64(6), '1970-01-01 00:00:00.000010'::DateTime64(6));
SELECT DATEDIFF(second, '1969-12-31 23:59:59.123'::DateTime64(6), '1970-01-01 00:00:09.123'::DateTime64(6));

SELECT toYYYYMMDDhhmmss(toDateTime64('1969-12-31 23:59:59.900', 3));