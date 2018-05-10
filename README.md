# PigOoziePlayground
This is a playground for Oozie with Pig

Deploy:
In Mac:
* ./rsyncOozie.sh

In 
* kinit $(whoami)@Y.CORP.YAHOO.COM
* cd vespa-athenz-feed
* hadoop fs -copyFromLocal -f * /user/zhiqu/vespa-athenz-feed
* export OOZIE_URL=http://jetblue-oozie.blue.ygrid.yahoo.com:4080/oozie/
* oozie job -run -config workflow.properties -auth KERBEROS