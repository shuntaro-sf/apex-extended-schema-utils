[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.1/README.md) &frasl; ObjectRecordType

## ObjectRecordType

### ObjectRecordType

Constructor providing object type.

```apex
SIGNATURE

  public ObjectRecordType(System.Type sObjectType)

PARAMETERS

  sObjectType

    Description: sObjectType SObject type.

    Type: System.Type

RETURN VALUE


```

### getDeveloperNames

Gets record type developer names.

```apex
SIGNATURE

  public List<String> getDeveloperNames()



RETURN VALUE

  List<String>
```

### getIds

Gets record type developer names.

```apex
SIGNATURE

  public Map<String, Id> getIds()



RETURN VALUE

  Map<String, Id>
```

### isActive

Whether record types are active.

```apex
SIGNATURE

  public Map<String, Boolean> isActive()



RETURN VALUE

  Map<String, Boolean>
```

### isAvailable

Whether record types are available.

```apex
SIGNATURE

  public Map<String, Boolean> isAvailable()



RETURN VALUE

  Map<String, Boolean>
```

### isDefault

Whether record types are default.

```apex
SIGNATURE

  public Map<String, Boolean> isDefault()



RETURN VALUE

  Map<String, Boolean>
```

### isMaster

Whether record types are master.

```apex
SIGNATURE

  public Map<String, Boolean> isMaster()



RETURN VALUE

  Map<String, Boolean>
```
