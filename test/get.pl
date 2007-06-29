#!/usr/bin/perl

use strict;
use DBI::BabyConnect;

use AFRMT;

my $bbconn = DBI::BabyConnect->new('BABYDB_001');
$bbconn-> HookError(">>/tmp/error.log");
$bbconn-> HookTracing(">>/tmp/db.log",1);


my $qry = qq{SELECT * FROM TABLE2 WHERE ID < ? };

# $rows is an array reference to be filled by fetchQdaAA()
my $rows=[];

if ($bbconn-> fetchQdaAA($qry,$rows,{INCLUDE_HEADER=>1,MAX_ROWS=>20},5) ) { 
	my @attributesLength = qw(ID 6  DATASTRING 22 DATANUM 10);
	my $dataLines = AFRMT::getdlFormattedAA($rows,\@attributesLength, {ID=>'Id', DATASTRING=>'Data', DATANUM => 'Data Number'});
	for (my $i=0; $i<@{ $$dataLines{DATA_LINES} }; $i++) {
		if ($i % 10 == 0) {
			print $$dataLines{TITLE_LINE};
			print $$dataLines{UNDERLINE};
		}	
		print ${$$dataLines{DATA_LINES}}[$i];
	}
}
else {
	print "NONE!!!!!!!!\n";
}

