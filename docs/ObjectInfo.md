[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.1/README.md) &frasl; ObjectInfo

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
