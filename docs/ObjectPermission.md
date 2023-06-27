[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.0/README.md) &frasl; ObjectPermission

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
