public with sharing class ObjectRelation {
  System.Type sObjectType;

  public ObjectRelation(System.Type sObjectType) {
    this.sObjectType = sObjectType;
  }

  public Map<Schema.SobjectField, List<ObjectInfo>> getParentObjectInfos() {
    Map<Schema.SobjectField, List<ObjectInfo>> parentObjectInfos = new Map<Schema.SobjectField, List<ObjectInfo>>();
    ObjectInfo parentObjectInfo = new ObjectInfo(Account.class);
    Map<String, SObjectField> fieldMap = getFieldMap();
    Schema.SObjectType schemaSObjectType = Schema.getGlobalDescribe().get(sObjectType.toString());
    for (String fieldFullName : fieldMap.keySet()) {
      if (fieldMap.get(fieldFullName).getDescribe().getType() != Schema.DisplayType.REFERENCE) {
        continue;
      }
      List<ObjectInfo> parentSObjectTypes = new List<ObjectInfo>();
      List<Schema.SObjectType> parentSchemaSObjectTypes = fieldMap.get(fieldFullName).getDescribe().getReferenceTo();
      for (Schema.SObjectType parentSchemaSObjectType : parentSchemaSObjectTypes) {
        System.Type parentSObjectType = System.Type.forName(String.valueOf(parentSchemaSObjectType));
        parentSObjectTypes.add(new ObjectInfo(parentSObjectType));
      }
      parentObjectInfos.put(fieldMap.get(fieldFullName), parentSObjectTypes);
    }
    return parentObjectInfos;
  }

  /**
   * @description Gets ObjectInfos of the all child objects.
   * @return Map of labels of child objects for each of child relation names.
   * @example
   */
  public Map<String, ObjectInfo> getChildObjectInfos() {
    Map<String, ObjectInfo> childObjectInfos = new Map<String, ObjectInfo>();
    Schema.SObjectType schemaSObjectType = Schema.getGlobalDescribe().get(sObjectType.toString());
    for (Schema.ChildRelationship childRelationship : schemaSObjectType.getDescribe().getChildRelationships()) {
      if (childRelationship.getRelationshipName() == null) {
        continue;
      }
      childObjectInfos.put(
        childRelationship.getRelationshipName(),
        new ObjectInfo(System.Type.forName(String.valueOf(childRelationship.getChildSObject())))
      );
    }
    return childObjectInfos;
  }

  private Map<String, Schema.SObjectField> getFieldMap() {
    Map<String, Schema.SObjectField> fieldMap = Schema.getGlobalDescribe()
      .get(sObjectType.toString())
      .getDescribe()
      .fields.getMap();
    return fieldMap;
  }
}
