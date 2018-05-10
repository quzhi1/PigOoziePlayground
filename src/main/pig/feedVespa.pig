-- Debug mode, run:
-- kinit $(whoami)@Y.CORP.YAHOO.COM
-- pig -Dmapreduce.job.acl-view-job=* -Dvespa.feed.proxy.host=httpproxy-prod.blue.ygrid.yahoo.com -Dvespa.feed.proxy.port=4080 -f feedVespa.pig -Dvespa.feed.ssl=true -Dvespa.feed.defaultport=4443
REGISTER vespa-hadoop.jar;

DEFINE VespaStorage com.yahoo.vespa.hadoop.pig.VespaStorage();

data = LOAD '/user/zhiqu/comments.json' AS (json:chararray);

STORE data INTO 'canvass-search--by-zhiqu.us-east-1.dev.vespa.yahooapis.com'  USING VespaStorage();
--DUMP data;