# PigOoziePlayground
This is a playground for Oozie with Pig

Deploy:
In Mac:
* ./rsyncOozie.sh

In 
* kinit $(whoami)@Y.CORP.YAHOO.COM
* hadoop fs -copyFromLocal -f vespa-athenz-feed /user/zhiqu
* export OOZIE_URL=http://jetblue-oozie.blue.ygrid.yahoo.com:4080/oozie/
* cd vespa-athenz-feed
* oozie job -run -config workflow.properties -auth KERBEROS