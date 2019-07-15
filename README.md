# MyBatis Migration

Welcome!

This is a MyBatis Migration repository. You can specify the repository directory when running migrations using the `--path=<repos-directory>` option. The default path is the current working directory ("`./`").    

The repository base directory contains three subdirectories as follows:

`./drivers`
 * JDBC driver .jar or .zip files in this directory; these are dynamically loaded. 
`./environments` 
 * Within this folder, `.properties` files represent various database instances used for each environment. 
 * By default a `development.properties` file is created for you to configure your local development database properties. 
 * You can also create `test.properties` and `production.properties` files. 
 * The environment can be specified when running a migration by using the `--env=<environment>` option (without the path or ".properties" part).

The default environment is "development".

`./scripts`

 * This directory contains your migration SQL files. 
 * These are the files that contain your DDL to both upgrade and downgrade your database structure. 
 * By default, the directory will contain the script to create the changelog table, plus one empty "first" migration script. 
 * To create a new migration script, use the "`new`" command. 
 * To run all pending migrations, use the "`up`" command. 
 * To undo the last migration applied, use the "`down`" command etc.

For more information about commands and options, run the MyBatis Migration script with the --help option.

Enjoy.


### Mybatis Migration Maven Plugin commands:

Maven MyBatis Plugin Commands, run via:
```
mvn migration:<command> [-D<env-var>=x]
```

### Commands 

`help` - Help on all the commands    
`init` - Init command creates a new migrate repository into 'repository' location.     
`new` -  Create a new migration script     
`status` - Check Status of Migrations (default = development)           
`bootstrap` - Run Bootstrap Script     
`up` - Run all change sets    
`pending` - Run all pending change sets    
`script` - Generate a SQL script    
`status` - Status on what change sets have been run    

## Examples

`mvn migration:up -Dmigration.up.steps=1` 
* Run on change set at a time    

`mvn migration:new -Dmigration.description=<FileName>` 
* Create new migration file    

`mvn migration:script -X -Dmigration.v1=0 -Dmigration.v2=20151208123818 -Dmigration.output=script.sql` 
* Generate script file: script.sql (set v2 to desired version) 
   
`mvn migration:status -Dmigration.env=development`
* Run status on development

`mvn -X migration:status -Dmigration.env=test`
* Run status on test



