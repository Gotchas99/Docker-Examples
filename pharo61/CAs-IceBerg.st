"Restore defaults"
Iceberg enableMetacelloIntegration: false.
MetacelloPharo30Platform select.

"Update metacello" 
Metacello new
  baseline: 'Metacello';
  repository: 'github://metacello/metacello:Pharo6.1/repository';
  onConflict: [:e | e useIncoming ];
  get;
  load.

"Update iceberg"
 #(
	'Iceberg-UI' 
	'Iceberg-Plugin-GitHub' 
	'Iceberg-Plugin' 
	'Iceberg-Metacello-Integration' 
	'Iceberg-Libgit-Tonel' 
	'Iceberg-Libgit-Filetree' 
	'Iceberg-Libgit' 
	'Iceberg' 
	'LibGit-Core') 
do: [ :each | (each asPackageIfAbsent: [ nil ]) ifNotNil: #removeFromSystem ].
Metacello new
  	baseline: 'Iceberg';
  	repository: 'github://pharo-vcs/iceberg:v0.6';
  	load.
