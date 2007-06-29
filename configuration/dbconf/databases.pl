# Databases definitions

{

BABYDB_001 =>
{
	Driver => 'Mysql',
	#Server=>'gracy.youetl.com',
	Server=>'',
	UserName=>'root',
	Password=>'abcdef',
	# Mysql defines a database name, CAREFUL it may be case sensitive!
	DataName=>'BABYDB',
	PrintError=>1,
	RaiseError=>1,
	AutoRollback => 0,
	AutoCommit=>1,
	LongTruncOk=>1,
	LongReadLen => 900000,
},


BABYDB_002 =>
{
	Driver => 'Mysql',
	#Server=>'gracy.youetl.com',
	Server=>'',
	UserName=>'root',
	Password=>'abcdef',
	# Mysql defines a database name, CAREFUL it may be case sensitive!
	DataName=>'BABYDB',
	PrintError=>1,
	RaiseError=>1,
	AutoRollback => 0,
	AutoCommit=>1,
	LongTruncOk=>1,
	LongReadLen => 900000,
},

BABYDB_003 =>
{
	Driver => 'Mysql',
	#Server=>'gracy.youetl.com',
	Server=>'',
	UserName=>'root',
	Password=>'abcdef',
	# Mysql defines a database name, CAREFUL it may be case sensitive!
	DataName=>'BABYDB',
	PrintError=>1,
	RaiseError=>1,
	AutoRollback => 0,
	AutoCommit=>1,
	LongTruncOk=>1,
	LongReadLen => 900000,
},

BABYDB_004 =>
{
	Driver => 'Mysql',
	#Server=>'gracy.youetl.com',
	Server=>'',
	UserName=>'root',
	Password=>'abcdef',
	# Mysql defines a database name, CAREFUL it may be case sensitive!
	DataName=>'BABYDB',
	PrintError=>1,
	RaiseError=>1,
	AutoRollback => 0,
	AutoCommit=>1,
	LongTruncOk=>1,
	LongReadLen => 900000,
},


BABYCONNECT_001 =>
{
	Driver => 'Mysql',
	#Server=>'db1.youprocess.net',
	Server=>'',
	UserName=>'root',
	Password=>'abcdef',
	DataName=>'webprocessors',
	PrintError=>1,
	RaiseError=>1,
	AutoRollback => 1,
	AutoCommit=>1,
	LongTruncOk=>1,
	LongReadLen => 900000,
},


BABYCONNECT_002 =>
{
	Driver => 'Mysql',
	#Server=>'db2.youprocess.net',
	Server=>'',
	UserName=>'root',
	Password=>'abcdef',
	DataName=>'webprocessors',
	PrintError=>1,
	RaiseError=>1,
	AutoRollback => 1,
	AutoCommit=>1,
	LongTruncOk=>1,
	LongReadLen => 900000,
},

# an Oracle descriptor
ORADB_001 =>
 	{
		Driver => 'Oracle',
		Server=>'OK.WORLD',
		UserName=>'okok',
		Password=>'okoksc',
		PrintError=>1,
		RaiseError=>1,
		AutoRollback => 1,
		AutoCommit=>0,
		LongTruncOk=>1,
		LongReadLen => 900000,
	}

};

