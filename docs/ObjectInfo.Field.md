[README](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.1/README.md) &frasl; [ObjectInfo](https://github.com/shuntaro-sfdx/apex-extended-schema-utils/blob/v1.0.1/docs/ObjectInfo.md) &frasl; Field

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
