public with sharing class ObjectInfo {
  private System.Type sObjectType;
  public Field field;

  /**
   * @description Constructor providing object type.
   * @param sObjectType SObject type.
   */
  public ObjectInfo(System.Type sObjectType) {
    if (Schema.getGlobalDescribe().get(sObjectType.toString()) == null) {
      throw new ExceptionMessage.CustomException(ExceptionMessage.MESSAGES.get('ObjectInfoNotFoundSObject'));
    }
    this.sObjectType = sObjectType;
    this.field = new Field(this);
  }

  public String getFullName() {
    String objectFullName = sObjectType.toString();
    return objectFullName;
  }

  public String getLabel() {
    Schema.SObjectType schemaSObjectType = Schema.getGlobalDescribe().get(sObjectType.toString());
    String objectLabel = schemaSObjectType.getDescribe().getLabel();
    return objectLabel;
  }
  /**
   * @description Instantiates ObjectRelation object.
   * @return  ObjectRelation object.
   * @example
   */
  public ObjectRelation instantiateRelation() {
    ObjectRelation objectRelation = new ObjectRelation(sObjectType);
    return objectRelation;
  }
  /**
   * @description Inner class for Field info.
   */
  public class Field {
    private ObjectInfo objectInfo;

    public Field(ObjectInfo paramObjectInfo) {
      objectInfo = paramObjectInfo;
    }

    public List<String> getFullNames() {
      List<String> fieldFullNames = new List<String>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        fieldFullNames.add(fieldMap.get(fieldName).getDescribe().getName());
      }
      return fieldFullNames;
    }

    /**
     * @description Gets field labels maped to Schema.SObjectField.
     * @return Map of field labels for each of Scema.SObjectField objects.
     * @example
     */
    public Map<Schema.SObjectField, String> getLabels() {
      map<Schema.SObjectField, String> fieldLabels = new Map<Schema.SObjectField, String>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        fieldLabels.put(fieldMap.get(fieldName), fieldMap.get(fieldName).getDescribe().getLabel());
      }
      return fieldLabels;
    }
    /**
     * @description Gets field data types.
     * @return Map of field data types for each of Scema.SObjectField objects.
     * @example
     */
    public Map<Schema.SObjectField, String> getTypes() {
      Map<Schema.SObjectField, String> dataTypes = new Map<Schema.SObjectField, String>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        dataTypes.put(fieldMap.get(fieldName), String.valueOf(fieldMap.get(fieldName).getDescribe().getType()));
      }
      return dataTypes;
    }

    private List<Schema.PicklistEntry> getPicklistEntries(Schema.SObjectField sObjectField) {
      List<Schema.PicklistEntry> pickListValues = sObjectField.getDescribe().getPicklistValues();
      return pickListValues;
    }

    public Map<Schema.SObjectField, Integer> getDigits() {
      Map<Schema.SObjectField, Integer> digits = new Map<Schema.SObjectField, Integer>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        Integer eachDigits = fieldMap.get(fieldName).getDescribe().getDigits();
        if (eachDigits == null) {
          continue;
        }
        digits.put(fieldMap.get(fieldName), eachDigits);
      }
      return digits;
    }

    public Map<Schema.SObjectField, Integer> getLengths() {
      Map<Schema.SObjectField, Integer> lengths = new Map<Schema.SObjectField, Integer>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        Integer length = fieldMap.get(fieldName).getDescribe().getLength();
        if (length == null) {
          continue;
        }
        lengths.put(fieldMap.get(fieldName), length);
      }
      return lengths;
    }

    public Map<Schema.SObjectField, Integer> getPrecisions() {
      Map<Schema.SObjectField, Integer> precisions = new Map<Schema.SObjectField, Integer>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        Integer precision = fieldMap.get(fieldName).getDescribe().getPrecision();
        if (precision == null) {
          continue;
        }
        precisions.put(fieldMap.get(fieldName), precision);
      }
      return precisions;
    }

    public Map<Schema.SObjectField, Integer> getScales() {
      Map<Schema.SObjectField, Integer> scales = new Map<Schema.SObjectField, Integer>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        Integer scale = fieldMap.get(fieldName).getDescribe().getScale();
        if (scale == null) {
          continue;
        }
        scales.put(fieldMap.get(fieldName), scale);
      }
      return scales;
    }

    public Map<Schema.SObjectField, List<Schema.SObjectType>> getReferencesTo() {
      Map<Schema.SObjectField, List<Schema.SObjectType>> referencesTo = new Map<Schema.SObjectField, List<Schema.SObjectType>>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        List<Schema.SObjectType> referenceTo = fieldMap.get(fieldName).getDescribe().getReferenceTo();
        if (referenceTo.size() == 0) {
          continue;
        }
        referencesTo.put(fieldMap.get(fieldName), referenceTo);
      }
      return referencesTo;
    }

    public Map<Schema.SObjectField, Boolean> isExternalId() {
      Map<Schema.SObjectField, Boolean> isExternalId = new Map<Schema.SObjectField, Boolean>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        isExternalId.put(fieldMap.get(fieldName), fieldMap.get(fieldName).getDescribe().isExternalID());
      }
      return isExternalId;
    }

    public Map<Schema.SObjectField, Boolean> isRequired() {
      Map<Schema.SObjectField, Boolean> isRequired = new Map<Schema.SObjectField, Boolean>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        isRequired.put(fieldMap.get(fieldName), !fieldMap.get(fieldName).getDescribe().isNillable());
      }
      return isRequired;
    }

    public Map<Schema.SObjectField, Boolean> isUnique() {
      Map<Schema.SObjectField, Boolean> isUnique = new Map<Schema.SObjectField, Boolean>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        isUnique.put(fieldMap.get(fieldName), fieldMap.get(fieldName).getDescribe().isUnique());
      }
      return isUnique;
    }

    /**
     * @description Gets picklist labels
     * @return Map of picklist labels maped to the picklist fullNames for each of fields
     * @example
     */
    public Map<Schema.SObjectField, Map<String, String>> getPicklistLabels() {
      Map<Schema.SObjectField, Map<String, String>> picklistLabels = new Map<Schema.SObjectField, Map<String, String>>();
      Map<String, Schema.SObjectField> fieldMap = getFieldMap();
      for (String fieldName : fieldMap.keySet()) {
        List<Schema.PicklistEntry> pickListValues = getPicklistEntries(fieldMap.get(fieldName));
        if (pickListValues == null) {
          continue;
        }
        Map<String, String> pickListLabelsForEachField = new Map<String, String>();
        for (Schema.PicklistEntry f : pickListValues) {
          pickListLabelsForEachField.put(f.getValue(), f.getLabel());
        }
        picklistLabels.put(fieldMap.get(fieldName), pickListLabelsForEachField);
      }
      return pickListLabels;
    }

    private Map<String, Schema.SObjectField> getFieldMap() {
      Map<String, Schema.SObjectField> fieldMap = Schema.getGlobalDescribe()
        .get(objectInfo.sObjectType.toString())
        .getDescribe()
        .fields.getMap();
      return fieldMap;
    }
  }
}
