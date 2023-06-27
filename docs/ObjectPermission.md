[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.0/README.md)/DynamicSoql

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

[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.0/README.md)/ExceptionMessage

## ExceptionMessage

[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.0/README.md)/ObjectInfo

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

### instantiateRecordType

Instantiates ObjectRecordType object.

```apex
SIGNATURE

  public ObjectRecordType instantiateRecordType()



RETURN VALUE

  ObjectRecordType
```

### instantiateRelation

Instantiates ObjectRelation object.

```apex
SIGNATURE

  public ObjectRelation instantiateRelation()



RETURN VALUE

  ObjectRelation
```

[[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.0/README.md)/ObjectInfo](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.0/ObjectInfo.md)/Field

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

[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.0/README.md)/ObjectPermission

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

[[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.0/README.md)/ObjectPermission](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.0/ObjectPermission.md)/Field

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
