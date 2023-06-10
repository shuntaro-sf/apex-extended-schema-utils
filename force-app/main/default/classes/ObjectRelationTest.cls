@isTest(SeeAllData=false)
public without sharing class ObjectRelationTest {
  @isTest
  private static void testGetParnetObjectInfos() {
    ObjectRelation objectRelation = new ObjectRelation(Contact.class);
    Map<Schema.SobjectField, List<ObjectInfo>> parentObjectInfos = objectRelation.getParentObjectInfos();
    System.debug(parentObjectInfos.get(Contact.AccountId)[0]);
    System.assertEquals(
      'Account',
      parentObjectInfos.get(Contact.AccountId)[0].getFullName(),
      'Parent object fullName is wrong.'
    );
  }

  @isTest
  private static void testGetChildObjectInfos() {
    ObjectRelation objectRelation = new ObjectRelation(Account.class);
    Map<String, ObjectInfo> childObjectInfos = objectRelation.getChildObjectInfos();
    System.assertEquals(
      'Opportunity',
      childObjectInfos.get('Opportunities').getFullName(),
      'Child Object fullName is wrong.'
    );
    System.assertEquals('Contact', childObjectInfos.get('Contacts').getFullName(), 'Child Object fullName is wrong.');
  }
}
