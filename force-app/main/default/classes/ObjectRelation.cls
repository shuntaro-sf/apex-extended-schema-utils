public with sharing class ObjectRelation {
  System.Type sObjectType;

  public ObjectRelation(System.Type sObjectType) {
    this.sObjectType = sObjectType;
  }

  public Map<String, ObjectInfo> getParentObjectInfo() {
    ObjectInfo parentObjectInfo = new ObjectInfo();
    // todo : write code to get parent object info.
    return parentObjectInfo;
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
}
