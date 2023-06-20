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

    System.assert(fieldFullNames.contains('AccountSource'), 'Field fullNames are wrong.');
    System.assert(fieldFullNames.contains('Type'), 'Field fullName is wrong.');
    System.assertEquals('Account Source', fieldLabels.get(Account.AccountSource), 'Field labels are wrong.');
    System.assertEquals('Account Type', fieldLabels.get(Account.Type), 'Field labels are wrong.');
  }

  @isTest
  private static void testGetFieldDetails() {
    ObjectInfo objectInfo = new ObjectInfo(Account.class);

    Map<Schema.SObjectField, String> dataTypes = objectInfo.field.getTypes();
    Map<Schema.SObjectField, Map<String, String>> picklistLabels = objectInfo.field.getPicklistLabels();
    Map<Schema.SObjectField, Integer> digits = objectInfo.field.getDigits();
    Map<Schema.SObjectField, Integer> lengths = objectInfo.field.getLengths();
    Map<Schema.SObjectField, Integer> precisions = objectInfo.field.getPrecisions();
    Map<Schema.SObjectField, Integer> scales = objectInfo.field.getScales();
    Map<Schema.SObjectField, List<Schema.SObjectType>> referencesTo = objectInfo.field.getReferencesTo();
    Map<Schema.SObjectField, Boolean> isExternalId = objectInfo.field.isExternalId();
    Map<Schema.SObjectField, Boolean> isRequired = objectInfo.field.isRequired();
    Map<Schema.SObjectField, Boolean> isUnique = objectInfo.field.isUnique();

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

    System.assertEquals(0, digits.get(Account.Name), 'Field digits are wrong.');
    System.assertEquals(80, lengths.get(Account.Site), 'Field lengths are wrong.');
    System.assertEquals(0, precisions.get(Account.NumberOfEmployees), 'Field precisions are wrong.');
    System.assertEquals(0, scales.get(Account.NumberOfEmployees), 'Field scales are wrong.');
    System.assertEquals(User.SObjectType, referencesTo.get(Account.CreatedById)[0], 'Field references are wrong.');
    System.assertEquals(false, isExternalId.get(Account.Name), 'Field isExternalId are wrong.');
    System.assertEquals(true, isRequired.get(Account.Name), 'Field isRequired are wrong.');
    System.assertEquals(false, isUnique.get(Account.Name), 'Field isUnique are wrong.');
  }

  @isTest
  private static void testInstantiateRelation() {
    ObjectInfo objectInfo = new ObjectInfo(Account.class);
    ObjectRelation objectRelation = objectInfo.instantiateRelation();
    System.assert(objectRelation != null, 'Failed to instantiate ObjectRelation.');
  }
}
