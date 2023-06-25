public with sharing class ObjectRecordType {
  private System.Type sObjectType;

  /**
   * @description Constructor providing object type.
   * @param sObjectType SObject type.
   */
  public ObjectRecordType(System.Type sObjectType) {
    if (Schema.getGlobalDescribe().get(sObjectType.toString()) == null) {
      throw new ExceptionMessage.CustomException(ExceptionMessage.MESSAGES.get('ObjectRecordTypeNotFoundSObject'));
    }
    this.sObjectType = sObjectType;
  }

  /**
   * @description Gets record type developer names.
   * @return  Record type developer names.
   * @example
   */
  public List<String> getDeveloperNames() {
    List<String> developerNames = new List<String>();
    List<Schema.RecordTypeInfo> recordTypeInfos = getRecordTypeInfos();
    for (Schema.RecordTypeInfo recordTypeInfo : recordTypeInfos) {
      developerNames.add(recordTypeInfo.getDeveloperName());
    }
    return developerNames;
  }

  /**
   * @description Gets record type developer names.
   * @return  Record type ids mapped to each of developer names.
   * @example
   */
  public Map<String, Id> getIds() {
    Map<String, Id> ids = new Map<String, Id>();
    List<Schema.RecordTypeInfo> recordTypeInfos = getRecordTypeInfos();
    for (Schema.RecordTypeInfo recordTypeInfo : recordTypeInfos) {
      ids.put(recordTypeInfo.getDeveloperName(), recordTypeInfo.getRecordTypeId());
    }
    return ids;
  }

  /**
   * @description Whether record types are active.
   * @return  Boolean values that represents whether record types are active mapped to each of developer names.
   * @example
   */
  public Map<String, Boolean> isActive() {
    Map<String, Boolean> isActive = new Map<String, Boolean>();
    List<Schema.RecordTypeInfo> recordTypeInfos = getRecordTypeInfos();
    for (Schema.RecordTypeInfo recordTypeInfo : recordTypeInfos) {
      isActive.put(recordTypeInfo.getDeveloperName(), recordTypeInfo.isActive());
    }
    return isActive;
  }

  /**
   * @description Whether record types are available.
   * @return  Boolean values that represents whether record types are available mapped to each of developer names.
   * @example
   */
  public Map<String, Boolean> isAvailable() {
    Map<String, Boolean> isAvailable = new Map<String, Boolean>();
    List<Schema.RecordTypeInfo> recordTypeInfos = getRecordTypeInfos();
    for (Schema.RecordTypeInfo recordTypeInfo : recordTypeInfos) {
      isAvailable.put(recordTypeInfo.getDeveloperName(), recordTypeInfo.isAvailable());
    }
    return isAvailable;
  }

  /**
   * @description Whether record types are default.
   * @return  Boolean values that represents whether record types are default mapped to each of developer names.
   * @example
   */
  public Map<String, Boolean> isDefault() {
    Map<String, Boolean> isDefault = new Map<String, Boolean>();
    List<Schema.RecordTypeInfo> recordTypeInfos = getRecordTypeInfos();
    for (Schema.RecordTypeInfo recordTypeInfo : recordTypeInfos) {
      isDefault.put(recordTypeInfo.getDeveloperName(), recordTypeInfo.isDefaultRecordTypeMapping());
    }
    return isDefault;
  }

  /**
   * @description Whether record types are master.
   * @return  Boolean values that represents whether record types are master mapped to each of developer names.
   * @example
   */
  public Map<String, Boolean> isMaster() {
    Map<String, Boolean> isMaster = new Map<String, Boolean>();
    List<Schema.RecordTypeInfo> recordTypeInfos = getRecordTypeInfos();
    for (Schema.RecordTypeInfo recordTypeInfo : recordTypeInfos) {
      isMaster.put(recordTypeInfo.getDeveloperName(), recordTypeInfo.isMaster());
    }
    return isMaster;
  }

  private List<Schema.RecordTypeInfo> getRecordTypeInfos() {
    Schema.SObjectType schemaSObjectType = Schema.getGlobalDescribe().get(sObjectType.toString());
    List<Schema.RecordTypeInfo> recordTypeInfos = schemaSObjectType.getDescribe().getRecordTypeInfos();
    return recordTypeInfos;
  }
}
