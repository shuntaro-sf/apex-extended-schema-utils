@isTest(SeeAllData=false)
private without sharing class ObjectPermissionTest {
  @isTest
  private static void testGetObjectPermission() {
    ObjectPermission objectPermission = new ObjectPermission(Account.class);
    Boolean isAccessible = objectPermission.isAccessible();
    Boolean isCreateable = objectPermission.isCreateable();
    Boolean isUpdateable = objectPermission.isUpdateable();
    Boolean isUpsertable = objectPermission.isUpsertable();
    Boolean isDeletable = objectPermission.isDeletable();
    System.assert(isAccessible, 'Permission to access is wrong.');
    System.assert(isCreateable, 'Permission to create is wrong.');
    System.assert(isUpdateable, 'Permission to update is wrong.');
    System.assert(isUpsertable, 'Permission to upasert is wrong.');
    System.assert(isDeletable, 'Permission to delete is wrong.');
  }

  @isTest
  private static void testGetFieldPermission() {
    ObjectPermission objectPermission = new ObjectPermission(Account.class);
    Map<Schema.SObjectField, Boolean> isAccessible = objectPermission.field.isAccessible();
    Map<Schema.SObjectField, Boolean> isCreateable = objectPermission.field.isCreateable();
    Map<Schema.SObjectField, Boolean> isUpdateable = objectPermission.field.isUpdateable();
    Map<Schema.SObjectField, Boolean> isUpsertable = objectPermission.field.isUpsertable();
    System.assert(isAccessible.get(Account.AccountSource), 'Permission to access is wrong.');
    System.assert(isCreateable.get(Account.AccountSource), 'Permission to create is wrong.');
    System.assert(isUpdateable.get(Account.AccountSource), 'Permission to update is wrong.');
    System.assert(isUpsertable.get(Account.AccountSource), 'Permission to upasert is wrong.');
    System.assert(isAccessible.get(Account.Type), 'Permission to access is wrong.');
    System.assert(isCreateable.get(Account.Type), 'Permission to create is wrong.');
    System.assert(isUpdateable.get(Account.Type), 'Permission to update is wrong.');
    System.assert(isUpsertable.get(Account.Type), 'Permission to upasert is wrong.');
  }
}
