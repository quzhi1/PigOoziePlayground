REGISTER vespa-hadoop.jar;

-- Define short name for VespaAuthorizedStorage
DEFINE VespaAuthorizedStorage com.yahoo.vespa.hadoop.pig.VespaAuthorizedStorage();

-- Load data - one column for json data
data = LOAD '$DATA' AS (data:chararray);

-- Store into Vespa
STORE data INTO '$ENDPOINT' USING VespaAuthorizedStorage();

