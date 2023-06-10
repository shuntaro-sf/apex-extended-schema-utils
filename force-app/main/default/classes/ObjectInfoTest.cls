@isTest(SeeAllData=false)
public without sharing class ObjectInfoTest {
  @isTest
  private static void testGetObjectInfo() {
    ObjectInfo objectInfo = new ObjectInfo(Account.class);
    String objectFullName = objectInfo.getFullName();
    String objectLabel = objectInfo.getLabel();

    System.assertEquals('Account', objectFullName, 'Object fullName is wrong.');
    System.assertEquals('Account', objectLabel, 'Object label is wrong.');
  }

  @isTest
  private static void testGetFieldInfos() {
    ObjectInfo objectInfo = new ObjectInfo(Account.class);
    List<String> fieldFullNames = objectInfo.field.getFullNames();
    Map<Schema.SObjectField, String> fieldLabels = objectInfo.field.getLabels();
    Map<Schema.SObjectField, String> dataTypes = objectInfo.field.getDataTypes();
    Map<Schema.SObjectField, Map<String, String>> picklistLabels = objectInfo.field.getPicklistLabels();

    System.assert(fieldFullNames.contains('AccountSource'), 'Field fullNames are wrong.');
    System.assert(fieldFullNames.contains('Type'), 'Field fullName is wrong.');
    System.assertEquals('Account Source', fieldLabels.get(Account.AccountSource), 'Field labels are wrong.');
    System.assertEquals('Account Type', fieldLabels.get(Account.Type), 'Field labels are wrong.');
    System.assertEquals('PICKLIST', dataTypes.get(Account.AccountSource), 'Field data types are wrong.');
    System.assertEquals('PICKLIST', dataTypes.get(Account.Type), 'Field data types are wrong.');
    System.assertEquals(
      'Web',
      picklistLabels.get(Account.AccountSource).get('Web'),
      'Field picklist labels are wrong.'
    );
    System.assertEquals(
      'Prospect',
      picklistLabels.get(Account.Type).get('Prospect'),
      'Field picklist labels are wrong.'
    );
  }

  @isTest
  private static void testInstantiateRelation() {
    ObjectInfo objectInfo = new ObjectInfo(Account.class);
    ObjectRelation objectRelation = objectInfo.instantiateRelation();
    System.assert(objectRelation != null, 'Failed to instantiate ObjectRelation.');
  }
}
