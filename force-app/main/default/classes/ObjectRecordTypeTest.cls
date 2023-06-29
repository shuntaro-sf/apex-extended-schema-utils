@isTest(SeeAllData=false)
private without sharing class ObjectRecordTypeTest {
  @isTest
  private static void testGetObjectRecordType() {
    ObjectRecordType objectRecordType = new ObjectRecordType(Account.class);
    List<String> developerNames = objectRecordType.getDeveloperNames();
    Map<String, Id> ids = objectRecordType.getIds();
    Map<String, Boolean> isActive = objectRecordType.isActive();
    Map<String, Boolean> isAvailable = objectRecordType.isAvailable();
    Map<String, Boolean> isDefault = objectRecordType.isDefault();
    Map<String, Boolean> isMaster = objectRecordType.isMaster();

    System.assert(developerNames.contains('Master'), 'RecordType developer name is wrong.');
    System.assert(ids.get('Master') != null, 'RecordType id is wrong.');
    System.assertEquals(true, isActive.get('Master'), 'RecordType developer name is wrong.');
    System.assertEquals(true, isAvailable.get('Master'), 'RecordType developer name is wrong.');
    System.assertEquals(true, isDefault.get('Master'), 'RecordType developer name is wrong.');
    System.assertEquals(true, isDefault.get('Master'), 'RecordType developer name is wrong.');
  }
}
