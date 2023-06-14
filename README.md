# This package is in development, and we can't ensure the all function work correctly.

# Example

## DynamicDao class

Gets self SObject records.

```apex
DynamicDao accountDynamicDao = new DynamicDao(Account.class);
soqlQueryClause soqlQueryClause = new SoqlQueryClause();
soqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource', 'Type' };
soqlQueryClause.whereClause = 'Id != null';
soqlQueryClause.orderClause = 'Name';
soqlQueryClause.withClause = 'SECURITY_ENFORCED';
soqlQueryClause.limitClause = 100;
soqlQUeryClause.offsetClause = 5;
soqlQUeryClause.isForView = true;

List<SObject> records = accountDynamicDao.getSelfSObjectRecords(soqlQueryClause);
```

Gets parent SObject records.

```apex
DynamicDao contactDynamicDao = new DynamicDao(Contact.class);
SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
soqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'LastName' };
soqlQueryClause.whereClause = 'Id != null';
soqlQueryClause.orderClause = 'Name';
soqlQueryClause.withClause = 'SECURITY_ENFORCED';
soqlQueryClause.limitClause = 100;
soqlQUeryClause.offsetClause = 0;
soqlQUeryClause.isForView = true;

SoqlQueryClause parentSoqlQueryClause = new SoqlQueryClause();
parentSoqlQUeryClause.parentRelationName = 'Account';
parentSoqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource' };

soqlQUeryClause.parentSoqlQueryClauses = new List<SoqlQueryClause>{ parentSoqlQueryClause };
```

Gets child SObject records.

```apex
DynamicDao accountDynamicDao = new DynamicDao(Account.class);
SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
soqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource', 'Type' };
soqlQueryClause.whereClause = 'Id != null';
soqlQueryClause.orderClause = 'Name';
soqlQueryClause.withClause = 'SECURITY_ENFORCED';
soqlQueryClause.limitClause = 100;
soqlQUeryClause.offsetClause = 5;
soqlQUeryClause.isForView = true;

SoqlQueryClause childSoqlQueryClause = new SoqlQueryClause();
childSoqlQUeryClause.childRelationName = 'Contacts';
childSoqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'LastName', 'AccountId' };
soqlQUeryClause.childSoqlQueryClauses = new List<SoqlQueryClause>{ childSoqlQueryClause };

List<SObject> records = accountDynamicDao.getSObjectRecordsInChild(soqlQUeryClause);
```

Gets all related SObject records that the relation names of parameter soqlQueryClause refer to.

```apex
 DynamicDao accountDynamicDao = new DynamicDao(Account.class);
SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
soqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name' };
soqlQueryClause.whereClause = 'Id != null';
soqlQueryClause.orderClause = 'Name';
soqlQueryClause.withClause = 'SECURITY_ENFORCED';
soqlQueryClause.limitClause = 100;
soqlQUeryClause.offsetClause = 0;
soqlQUeryClause.isForView = true;

SoqlQueryClause firstChildSoqlQueryClause = new SoqlQueryClause();
firstChildSoqlQUeryClause.childRelationName = 'Contacts';
firstChildSoqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountId' };

SoqlQueryClause secondChildSoqlQueryClause = new SoqlQueryClause();
secondChildSoqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name' };
secondChildSoqlQUeryClause.childRelationName = 'Opportunities';

SoqlQueryClause parentSoqlQueryClause = new SoqlQueryClause();
parentSoqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountId' };
parentSoqlQUeryClause.childRelationName = 'Account';
firstChildSoqlQUeryClause.parentSoqlQueryClauses = new List<SoqlQueryClause>{ parentSoqlQueryClause };

soqlQUeryClause.childSoqlQueryClauses = new List<SoqlQueryClause>{
  firstChildSoqlQueryClause,
  secondChildSoqlQueryClause
};

List<SObject> records = accountDynamicDao.getSObjectRecords(soqlQUeryClause);
```

## ObjectInfo class

Gets fullName and label of Account object.

```apex
ObjectInfo objectInfo = new ObjectInfo(Account.class);
String objectFullName = objectInfo.getFullName();
String objectLabel = objectInfo.getLabel();
```

## ObjectRelation class

## ObjectPermission class

Gets permissions on Account object.

```apex
 ObjectPermission objectPermission = new ObjectPermission(Account.class);
Boolean isCreateable = objectPermission.isCreateable();
Boolean isUpdateable = objectPermission.isUpdateable();
Boolean isUpsertable = objectPermission.isUpsertable();
Boolean isDeletable = objectPermission.isDeletable();
```

Gets all field permissions on Account object.

```apex
ObjectPermission objectPermission = new ObjectPermission(Account.class);
Map<Schema.SObjectField, Boolean> isAccessible = objectPermission.field.isAccessible();
Map<Schema.SObjectField, Boolean> isCreateable = objectPermission.field.isCreateable();
Map<Schema.SObjectField, Boolean> isUpdateable = objectPermission.field.isUpdateable();
Map<Schema.SObjectField, Boolean> isUpsertable = objectPermission.field.isUpsertable();
System.assert(isAccessible.get(Account.AccountSource), 'Permission to access is wrong.');
System.assert(isCreateable.get(Account.AccountSource), 'Permission to create is wrong.');
System.assert(isUpdateable.get(Account.AccountSource), 'Permission to update is wrong.');
System.assert(isUpsertable.get(Account.AccountSource), 'Permission to upasert is wrong.');
```

# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
