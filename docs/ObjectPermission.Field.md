[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.1/README.md) &frasl; [ObjectPermission](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.1/docs/ObjectPermission.md) &frasl; Field

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
