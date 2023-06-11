@isTest(SeeAllData=false)
public with sharing class DynamicDaoTest {
  @isTest
  private static void testGetSObjectRecords() {
    List<Account> accounts = new List<Account>();
    for (Integer index = 0; index < 10; index++) {
      Account acc = new Account();
      acc.Name = 'Name' + index;
      acc.AccountSource = 'Web';
      acc.Type = 'Prospect';
      accounts.add(acc);
    }
    insert accounts;

    DynamicDao accountDynamicDao = new DynamicDao(Account.class);
    SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
    soqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource', 'Type' };
    soqlQueryClause.whereClause = 'Id != null';
    soqlQueryClause.orderClause = 'Name';
    soqlQueryClause.withClause = 'SECURITY_ENFORCED';
    soqlQueryClause.limitClause = 100;
    soqlQUeryClause.offsetClause = 5;
    soqlQUeryClause.isForView = true;

    List<SObject> records = accountDynamicDao.getSObjectRecords(soqlQueryClause);
    System.assertEquals(accounts.size() - soqlQUeryClause.offsetClause, records.size(), 'Failed to get records.');
  }

  @isTest
  private static void testGetSObjectRecordsWithOnlyFieldFullNames() {
    List<Account> accounts = new List<Account>();
    for (Integer index = 0; index < 10; index++) {
      Account acc = new Account();
      acc.Name = 'Name' + index;
      acc.AccountSource = 'Web';
      acc.Type = 'Prospect';
      accounts.add(acc);
    }
    insert accounts;

    DynamicDao accountDynamicDao = new DynamicDao(Account.class);
    List<String> fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource', 'Type' };

    List<SObject> records = accountDynamicDao.getSObjectRecords(fieldFullNames);
    System.assertEquals(accounts.size(), records.size(), 'Failed to get records.');
  }

  @isTest
  private static void testGetSObjectRecordsInChild() {
    DynamicDao accountDynamicDao = new DynamicDao(Account.class);
    SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
    soqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource', 'Type' };
    soqlQueryClause.whereClause = 'Id != null';
    soqlQueryClause.orderClause = 'Name';
    soqlQueryClause.withClause = 'SECURITY_ENFORCED';
    soqlQueryClause.limitClause = 100;
    soqlQUeryClause.offsetClause = 10;
    soqlQUeryClause.isForView = true;

    SoqlQueryClause childSoqlQueryClause = new SoqlQueryClause();
    childSoqlQUeryClause.childRelationName = 'Contacts';
    childSoqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountId' };
    soqlQUeryClause.childSoqlQueryClause = childSoqlQueryClause;

    List<SObject> records = accountDynamicDao.getSObjectRecordsInChild(soqlQUeryClause);
    System.assert(records != null, 'Failed to get child-records.');
  }

  @isTest
  private static void testGetSObjectRecordsOfParent() {
    DynamicDao accountDynamicDao = new DynamicDao(Contact.class);
    SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
    soqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'LastName' };
    soqlQueryClause.whereClause = 'Id != null';
    soqlQueryClause.orderClause = 'Name';
    soqlQueryClause.withClause = 'SECURITY_ENFORCED';
    soqlQueryClause.limitClause = 100;
    soqlQUeryClause.offsetClause = 10;
    soqlQUeryClause.isForView = true;

    SoqlQueryClause parentSoqlQueryClause = new SoqlQueryClause();
    parentSoqlQUeryClause.parentRelationName = 'Account';
    parentSoqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource' };
    soqlQUeryClause.parentSoqlQueryClause = parentSoqlQueryClause;

    List<SObject> records = accountDynamicDao.getSObjectRecordsOfParent(soqlQUeryClause);
    System.assert(records != null, 'Failed to get parent-records.');
  }
}
