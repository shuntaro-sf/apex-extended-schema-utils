[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.2/README.md) &frasl; ObjectRelation

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
