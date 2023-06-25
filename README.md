# This package is in development, and we can't ensure the all function work correctly.

# Usage

<usage>

## DynamicSoql

### DynamicSoql

Constructor providing object type.

```apex
SIGNATURE



public DynamicSoql(System.Type sObjectType)

PARAMETERS

  sObjectType

    Description: sObjectType SObject type.

    Type: System.Type

RETURN VALUE


```

### getSelfSObjectRecords

Gets the records of sObjectType.

```apex
SIGNATURE



public List<SObject> getSelfSObjectRecords(SoqlQueryClause soqlQueryClause)

PARAMETERS

  soqlQueryClause

    Description: soqlQueryClause SoqlQueryClause object to be converted to a soql query string when extracting records.

    Type: SoqlQueryClause

RETURN VALUE

  List<SObject>
```

### getSelfSObjectRecords

Gets the records of sObjectType.

```apex
SIGNATURE



public List<SObject> getSelfSObjectRecords(List<String> fieldFullNames)

PARAMETERS

  fieldFullNames

    Description: fieldFullNames List of Field API Names

    Type: List<String>

RETURN VALUE

  List<SObject>
```

### getSObjectRecordsOfParent

Gets the parent-records of sObjectType.

```apex
SIGNATURE



public List<SObject> getSObjectRecordsOfParent(SoqlQueryClause soqlQueryClause)

PARAMETERS

  soqlQueryClause

    Description: soqlQueryClause SoqlQueryClause object to be converted to a soql query string when extracting records.

    Type: SoqlQueryClause

RETURN VALUE

  List<SObject>
```

### getSObjectRecordsOfParent

Gets the parent-records of sObjectType.

```apex
SIGNATURE



public List<SObject> getSObjectRecordsOfParent(String parentRelationName, List<String> parentFieldFullNames)

PARAMETERS

  parentRelationName

    Description: parentRelationName Parent relation name.

    Type: StringPARAMETERS

  parentFieldFullNames

    Description: parentRelationName Parent relation name.

    Type: List<String>

RETURN VALUE

  List<SObject>
```

### getSObjectRecordsInChild

Gets the child-records of sObjectType.

```apex
SIGNATURE



public List<SObject> getSObjectRecordsInChild(SoqlQueryClause soqlQueryClause)

PARAMETERS

  soqlQueryClause

    Description: soqlQueryClause SoqlQueryClause object to be converted to a soql query string when extracting records.

    Type: SoqlQueryClause

RETURN VALUE

  List<SObject>
```

### getSObjectRecordsInChild

Gets the child-records of sObjectType.

```apex
SIGNATURE



public List<SObject> getSObjectRecordsInChild(String childRelationName, List<String> childFieldFullNames)

PARAMETERS

  childRelationName

    Description: childRelationName Relation name of child-object. Example: Accounts, CustomObj__r.

    Type: StringPARAMETERS

  childFieldFullNames

    Description: childRelationName Relation name of child-object. Example: Accounts, CustomObj__r.

    Type: List<String>

RETURN VALUE

  List<SObject>
```

### getSObjectRecords

Gets the records of sObjectType.

```apex
SIGNATURE



public List<SObject> getSObjectRecords(SoqlQueryClause soqlQueryClause)

PARAMETERS

  soqlQueryClause

    Description: soqlQueryClause SoqlQueryClause object to be converted to a soql query string when extracting records.

    Type: SoqlQueryClause

RETURN VALUE

  List<SObject>
```

### countSObjectRecords

Counts the number of records of sObjectType.

```apex
SIGNATURE



public List<AggregateResult> countSObjectRecords(SoqlQueryClause soqlQueryClause)

PARAMETERS

  soqlQueryClause

    Description: soqlQueryClause SoqlQueryClause object to be converted to a soql query string when extracting records.

    Type: SoqlQueryClause

RETURN VALUE

  List<AggregateResult>
```

### countSObjectRecords

Counts the number of records of sObjectType

```apex
SIGNATURE



public List<AggregateResult> countSObjectRecords(String groupClause)

PARAMETERS

  groupClause

    Description: groupClause Group clause for SOQL query.

    Type: String

RETURN VALUE

  List<AggregateResult>
```

### getSoqlQuery

```apex
SIGNATURE



public String getSoqlQuery(SoqlQueryClause soqlQueryClause)

PARAMETERS

  soqlQueryClause

    Description:

    Type: SoqlQueryClause

RETURN VALUE

  String
```

## ExceptionMessage

## ObjectInfo

### ObjectInfo

Constructor providing object type.

```apex
SIGNATURE



public ObjectInfo(System.Type sObjectType)

PARAMETERS

  sObjectType

    Description: sObjectType SObject type.

    Type: System.Type

RETURN VALUE


```

### getFullName

Gets object fullName.

```apex
SIGNATURE



public String getFullName()



RETURN VALUE

  String
```

### getLabel

Gets object label.

```apex
SIGNATURE



public String getLabel()



RETURN VALUE

  String
```

### isFeedEnabled

Whether the feed is enabled.

```apex
SIGNATURE



public Boolean isFeedEnabled()



RETURN VALUE

  Boolean
```

### isSearchable

Whether it is searchable.

```apex
SIGNATURE



public Boolean isSearchable()



RETURN VALUE

  Boolean
```

### instantiateRelation

Instantiates ObjectRelation object.

```apex
SIGNATURE



public ObjectRelation instantiateRelation()



RETURN VALUE

  ObjectRelation
```

### Field

Inner class for Field info.

```apex
SIGNATURE



public Field(ObjectInfo paramObjectInfo)

PARAMETERS

  paramObjectInfo

    Description:

    Type: ObjectInfo

RETURN VALUE


```

### getFullNames

```apex
SIGNATURE



public List<String> getFullNames()



RETURN VALUE

  List<String>
```

### getLabels

Gets field labels maped to Schema.SObjectField.

```apex
SIGNATURE



public Map<Schema.SObjectField, String> getLabels()



RETURN VALUE

  Map<Schema.SObjectField, String>
```

### getTypes

Gets field data types.

```apex
SIGNATURE



public Map<Schema.SObjectField, String> getTypes()



RETURN VALUE

  Map<Schema.SObjectField, String>
```

### getDigits

Gets field digits.

```apex
SIGNATURE



public Map<Schema.SObjectField, Integer> getDigits()



RETURN VALUE

  Map<Schema.SObjectField, Integer>
```

### getLengths

Gets field lengths.

```apex
SIGNATURE



public Map<Schema.SObjectField, Integer> getLengths()



RETURN VALUE

  Map<Schema.SObjectField, Integer>
```

### getPrecisions

Gets field precisions.

```apex
SIGNATURE



public Map<Schema.SObjectField, Integer> getPrecisions()



RETURN VALUE

  Map<Schema.SObjectField, Integer>
```

### getScales

Gets field data types.

```apex
SIGNATURE



public Map<Schema.SObjectField, Integer> getScales()



RETURN VALUE

  Map<Schema.SObjectField, Integer>
```

### getReferencesTo

Gets field references to parent objects.

```apex
SIGNATURE



public Map<Schema.SObjectField, List<Schema.SObjectType>> getReferencesTo()



RETURN VALUE

  Map<Schema.SObjectField, List<Schema.SObjectType>>
```

### isExternalId

Whether fields are external ID.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isExternalId()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

### isRequired

Whether fields are required.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isRequired()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

### isUnique

Whether fields are unique.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isUnique()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

### getPicklistLabels

Gets picklist labels

```apex
SIGNATURE



public Map<Schema.SObjectField, Map<String, String>> getPicklistLabels()



RETURN VALUE

  Map<Schema.SObjectField, Map<String, String>>
```

### Field

Inner class for Field info.

#### Field

Inner class for Field info.

```apex
SIGNATURE



public Field(ObjectInfo paramObjectInfo)

PARAMETERS

  paramObjectInfo

    Description:

    Type: ObjectInfo

RETURN VALUE


```

#### getFullNames

```apex
SIGNATURE



public List<String> getFullNames()



RETURN VALUE

  List<String>
```

#### getLabels

Gets field labels maped to Schema.SObjectField.

```apex
SIGNATURE



public Map<Schema.SObjectField, String> getLabels()



RETURN VALUE

  Map<Schema.SObjectField, String>
```

#### getTypes

Gets field data types.

```apex
SIGNATURE



public Map<Schema.SObjectField, String> getTypes()



RETURN VALUE

  Map<Schema.SObjectField, String>
```

#### getDigits

Gets field digits.

```apex
SIGNATURE



public Map<Schema.SObjectField, Integer> getDigits()



RETURN VALUE

  Map<Schema.SObjectField, Integer>
```

#### getLengths

Gets field lengths.

```apex
SIGNATURE



public Map<Schema.SObjectField, Integer> getLengths()



RETURN VALUE

  Map<Schema.SObjectField, Integer>
```

#### getPrecisions

Gets field precisions.

```apex
SIGNATURE



public Map<Schema.SObjectField, Integer> getPrecisions()



RETURN VALUE

  Map<Schema.SObjectField, Integer>
```

#### getScales

Gets field data types.

```apex
SIGNATURE



public Map<Schema.SObjectField, Integer> getScales()



RETURN VALUE

  Map<Schema.SObjectField, Integer>
```

#### getReferencesTo

Gets field references to parent objects.

```apex
SIGNATURE



public Map<Schema.SObjectField, List<Schema.SObjectType>> getReferencesTo()



RETURN VALUE

  Map<Schema.SObjectField, List<Schema.SObjectType>>
```

#### isExternalId

Whether fields are external ID.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isExternalId()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

#### isRequired

Whether fields are required.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isRequired()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

#### isUnique

Whether fields are unique.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isUnique()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

#### getPicklistLabels

Gets picklist labels

```apex
SIGNATURE



public Map<Schema.SObjectField, Map<String, String>> getPicklistLabels()



RETURN VALUE

  Map<Schema.SObjectField, Map<String, String>>
```

## ObjectPermission

### ObjectPermission

Constructor providing object type.

```apex
SIGNATURE



public ObjectPermission(System.Type sObjectType)

PARAMETERS

  sObjectType

    Description: sObjectType SObject type.

    Type: System.Type

RETURN VALUE


```

### isAccessible

Gets the object permission to access for an executing user.

```apex
SIGNATURE



public Boolean isAccessible()



RETURN VALUE

  Boolean
```

### isCreateable

Gets the object permission to create for an executing user.

```apex
SIGNATURE



public Boolean isCreateable()



RETURN VALUE

  Boolean
```

### isUpdateable

Gets the object permission to update for an executing user.

```apex
SIGNATURE



public Boolean isUpdateable()



RETURN VALUE

  Boolean
```

### isUpsertable

Gets the object permission to upsert for an executing user.

```apex
SIGNATURE



public Boolean isUpsertable()



RETURN VALUE

  Boolean
```

### isDeletable

Gets the object permission to delete for an executing user.

```apex
SIGNATURE



public Boolean isDeletable()



RETURN VALUE

  Boolean
```

### Field

```apex
SIGNATURE



public Field(ObjectPermission paramObjectPermission)

PARAMETERS

  paramObjectPermission

    Description:

    Type: ObjectPermission

RETURN VALUE


```

### isAccessible

Gets the field permissions to access for an executing user.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isAccessible()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

### isCreateable

Gets the field permissions to create for an executing user.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isCreateable()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

### isUpdateable

Gets the field permissions to update for an executing user.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isUpdateable()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

### isUpsertable

Gets the field permissions to upsert for an executing user.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isUpsertable()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

### Field

#### Field

```apex
SIGNATURE



public Field(ObjectPermission paramObjectPermission)

PARAMETERS

  paramObjectPermission

    Description:

    Type: ObjectPermission

RETURN VALUE


```

#### isAccessible

Gets the field permissions to access for an executing user.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isAccessible()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

#### isCreateable

Gets the field permissions to create for an executing user.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isCreateable()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

#### isUpdateable

Gets the field permissions to update for an executing user.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isUpdateable()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

#### isUpsertable

Gets the field permissions to upsert for an executing user.

```apex
SIGNATURE



public Map<Schema.SObjectField, Boolean> isUpsertable()



RETURN VALUE

  Map<Schema.SObjectField, Boolean>
```

## ObjectRelation

### ObjectRelation

Constructor providing object type.

```apex
SIGNATURE



public ObjectRelation(System.Type sObjectType)

PARAMETERS

  sObjectType

    Description: sObjectType SObject type.

    Type: System.Type

RETURN VALUE


```

### getParentObjectInfos

Gets ObjectInfos of the all parent objects.

```apex
SIGNATURE



public Map<Schema.SobjectField, List<ObjectInfo>> getParentObjectInfos()



RETURN VALUE

  Map<Schema.SobjectField, List<ObjectInfo>>
```

### getChildObjectInfos

Gets ObjectInfos of the all child objects.

```apex
SIGNATURE



public Map<String, ObjectInfo> getChildObjectInfos()



RETURN VALUE

  Map<String, ObjectInfo>
```

## SoqlQueryClause

</usage>

# Example

## DynamicSoql class

An example of getting self SObject records, equivalent to the following SOQL.

```soql
SELECT Id, Name, AccountSource, Type FROM Account
WEHRE Id != null ORDER BY Name WITH SECURITY_ENFORCED LIMIT 100 OFFSET 5 FOR VIEW
```

```apex
DynamicSoql accountDynamicSoql = new DynamicSoql(Account.class);
soqlQueryClause soqlQueryClause = new SoqlQueryClause();
soqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource', 'Type' };
soqlQueryClause.whereClause = 'Id != null';
soqlQueryClause.orderClause = 'Name';
soqlQueryClause.withClause = 'SECURITY_ENFORCED';
soqlQueryClause.limitClause = 100;
soqlQUeryClause.offsetClause = 5;
soqlQUeryClause.isForView = true;

List<SObject> records = accountDynamicSoql.getSelfSObjectRecords(soqlQueryClause);
```

An example of getting parent SObject records, equivalent to the following SOQL.

```soql
SELECT Account.Id, Account.Name, Account.LastName FROM Contact
WEHRE Id != null ORDER BY Name WITH SECURITY_ENFORCED LIMIT 100 OFFSET 0 FOR VIEW
```

```apex
DynamicSoql contactDynamicSoql = new DynamicSoql(Contact.class);
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

An example of getting child SObject records, equivalent to the following SOQL.

```soql
SELECT Id, Name, AccountSource, Type,
(SELECT Id, LastName, AccountId FROM Contacts) FROM Account
WEHRE Id != null ORDER BY Name WITH SECURITY_ENFORCED LIMIT 100 OFFSET 5 FOR VIEW
```

```apex
DynamicSoql accountDynamicSoql = new DynamicSoql(Account.class);
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

List<SObject> records = accountDynamicSoql.getSObjectRecordsInChild(soqlQUeryClause);
```

An example of getting all related SObject records that the relation names of parameter soqlQueryClause refer to.

The method getSObjectRecords allow you to get related records including parent and child SObjects. Self => Parent, Self => Child, and Child => Parent are supported.

The execution is equivalent to the following SOQL.

```soql
SELECT Id, Name,
(SELECT Id, Name, AccountId, Account.Id, Account.Name, Account.AccountId FROM Contacts),
(SELECT Id, Name FROM Opportunities) FROM Account
WEHRE Id != null ORDER BY Name WITH SECURITY_ENFORCED LIMIT 100 OFFSET 0 FOR VIEW
```

```apex
DynamicSoql accountDynamicSoql = new DynamicSoql(Account.class);
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
parentSoqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource' };
parentSoqlQUeryClause.childRelationName = 'Account';
firstChildSoqlQUeryClause.parentSoqlQueryClauses = new List<SoqlQueryClause>{ parentSoqlQueryClause };

soqlQUeryClause.childSoqlQueryClauses = new List<SoqlQueryClause>{
  firstChildSoqlQueryClause,
  secondChildSoqlQueryClause
};

List<SObject> records = accountDynamicSoql.getSObjectRecords(soqlQUeryClause);
```

An example of counting the number of Account records, equivalent to the following SOQL.

```soql
SELECT COUNT(Id) FROM Account WHERE Id != null GROUP BY AccountSource
```

```apex
DynamicSoql accountDynamicSoql = new DynamicSoql(Account.class);
SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
soqlQueryClause.fieldFullNames = new List<String>{ 'AccountSource' };
soqlQueryClause.whereClause = 'Id != null';
soqlQueryClause.countClause = 'Id';
soqlQueryClause.groupClause = 'AccountSource';

List<AggregateResult> numberOfRecords = accountDynamicSoql.countSObjectRecords(soqlQueryClause);
```

## ObjectInfo class

An example of getting the fullName and label of Account object.

```apex
ObjectInfo objectInfo = new ObjectInfo(Account.class);
String objectFullName = objectInfo.getFullName();
String objectLabel = objectInfo.getLabel();
```

An example of getting the fullName and label of all fields on Account object.

```apex
ObjectInfo objectInfo = new ObjectInfo(Account.class);
List<String> fieldFullNames = objectInfo.field.getFullNames();
Map<Schema.SObjectField, String> fieldLabels = objectInfo.field.getLabels();
```

An example of getting the further metadata of fields on Account object, e.g., type, length, scale, precision, ....

```apex
Map<Schema.SObjectField, String> types = objectInfo.field.getTypes();
Map<Schema.SObjectField, Map<String, String>> picklistLabels = objectInfo.field.getPicklistLabels();
Map<Schema.SObjectField, Integer> digits = objectInfo.field.getDigits();
Map<Schema.SObjectField, Integer> lengths = objectInfo.field.getLengths();
Map<Schema.SObjectField, Integer> precisions = objectInfo.field.getPrecisions();
Map<Schema.SObjectField, Integer> scales = objectInfo.field.getScales();
Map<Schema.SObjectField, List<Schema.SObjectType>> referencesTo = objectInfo.field.getReferencesTo();
Map<Schema.SObjectField, Boolean> isExternalId = objectInfo.field.isExternalId();
Map<Schema.SObjectField, Boolean> isRequired = objectInfo.field.isRequired();
Map<Schema.SObjectField, Boolean> isUnique = objectInfo.field.isUnique();
```

## ObjectRelation class

An exmaple of getting all parent-ObjectInfo class mapped to each of child field's Schema.SObjectField objects.

```apex
ObjectRelation objectRelation = new ObjectRelation(Contact.class);
Map<Schema.SobjectField, List<ObjectInfo>> parentObjectInfos = objectRelation.getParentObjectInfos();
```

An exmaple of getting all child-ObjectInfo class mapped to each of child relation names of the parent-object.

```apex
ObjectRelation objectRelation = new ObjectRelation(Account.class);
Map<String, ObjectInfo> childObjectInfos = objectRelation.getChildObjectInfos();
```

## ObjectPermission class

An example of getting permissions on Account object.

```apex
 ObjectPermission objectPermission = new ObjectPermission(Account.class);
Boolean isAccessible = objectPermission.isAccessible();
Boolean isCreateable = objectPermission.isCreateable();
Boolean isUpdateable = objectPermission.isUpdateable();
Boolean isUpsertable = objectPermission.isUpsertable();
Boolean isDeletable = objectPermission.isDeletable();
```

An example of getting all field permissions on Account object.

```apex
ObjectPermission objectPermission = new ObjectPermission(Account.class);
Map<Schema.SObjectField, Boolean> isAccessible = objectPermission.field.isAccessible();
Map<Schema.SObjectField, Boolean> isCreateable = objectPermission.field.isCreateable();
Map<Schema.SObjectField, Boolean> isUpdateable = objectPermission.field.isUpdateable();
Map<Schema.SObjectField, Boolean> isUpsertable = objectPermission.field.isUpsertable();
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
