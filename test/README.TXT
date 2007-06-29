

Install DBI::BabyConnect and Apache::BabyConnect from CPAN:
cpan -i DBI::BabyConnect
cpan -i Apache::BabyConnect

The distribution will also include a default configuration directory
and a test directory to get started using the modules.
Locate the configuration directory and edit the databases.pl file.
The databases.pl contains the database descriptors that you will use
to connect to the various data sources.
For instance, if you have extracted the DBI-BabyConnect.tgz into /opt,
then a configuration directory can be located in /opt/DBI-BabyConnect/configuration.
   # cd /opt/DBI-BabyConnect/configuration/dbconf
   # vi databases.pl

edit the databases.pl and make the proper changes to the descriptors, so
that point to the correct data sources with the proper authentication.
Refer to DBI::BabyConnect man page for information about the layout of a
database descriptor.

Edit the global configuration file globalconf.pl located in
/opt/DBI-BabyConnect/configuration/dbconf
and verify that the default setting is:
DBSETTING_FORCE_SINGLESPACE_FOR_EMPTY_STRING=1
CALLER_DISCONNECT=0
ON_FAILED_DBIEXECUTE_ROLLBACK_AND_EXIT=1
ENABLE_STATISTICS_ON_DO=0
ENABLE_STATISTICS_ON_SPC=0



To test the module, you need to have MySQL installed on your machine.

Create the database BABYDB in MySQL. You will create the database like
you do normally, by login to MySQL and using:
 > create database MySQL

Export the environment variable BABYCONNECT to point to the configuration
directory:
   # export BABYCONNET=/opt/DBI-BabyConnect/configuration

Change directory to the location where you have the test scripts:
   # cd /opt/DBI-BabyConnect/test

Run the connect.pl test script to test that you can create a DBI::BabyConnect
object to serve the data source:
   # connect.pl

Run the create.pl test script to create the test tables:
   # createtables.pl

The script will create the tables TABLE1 and TABLE2 based on the layout
$BABYCONNET/SQL/TABLES/TEST_TABLE.mysql
and the table CONCURRENT based on the layout
$BABYCONNET/SQL/TABLES/TEST_CONCURRENT.mysql

You should be able to verify that the tables TABLE1, TABLE2, and CONCURRENT
have been created in the database BABYDB.

You can check all error messages in /tmp/error.log
The DBI::BabyConnect trace and the DBI trace are in /tmp/db.log

NOTE: the createtables.pl may fail in case you do not have access
 to /tmp, in which case you need either to modify the directories
 in HookError() and HookTrace, or you can simply comment these line out.


Inserting Records:
===============
We will use the sqlbnd() method to populate the test tables TABLE1 and TABLE2.
The script insert.pl will populate TABLE1 and TABLE2.



Testing Rollback: read the documentation and instructions within the scripts:
===============

testrollback1.pl
testrollback2.pl






