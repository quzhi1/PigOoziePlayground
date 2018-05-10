REGISTER vespa-hadoop.jar;

DEFINE VespaAuthorizedStorage com.yahoo.vespa.hadoop.pig.VespaAuthorizedStorage();

data = LOAD '/user/zhiqu/oneComment.json' AS (json:chararray);

STORE data INTO 'canvass-search-qa--canvass-qa.us-west-1.prod.vespa.yahooapis.com' USING VespaAuthorizedStorage();
--DUMP data;