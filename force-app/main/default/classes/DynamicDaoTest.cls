@isTest(SeeAllData=false)
public with sharing class DynamicDaoTest {
  @isTest
  private static void testGetSObjectRecords() {
    DynamicDao accountDynamicDao = new DynamicDao(Account.class);
    SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
    soqlQueryClause.fieldFullNames = new List<String>{ 'Id', 'Name', 'AccountSource', 'Type' };
    soqlQueryClause.whereClause = 'Id != null';
    soqlQueryClause.orderClause = 'Name';
    soqlQueryClause.withClause = 'SECURITY_ENFORCED';
    soqlQueryClause.limitClause = 100;
    soqlQUeryClause.offsetClause = 10;
    soqlQUeryClause.isForView = true;

    List<SObject> records = accountDynamicDao.getSObjectRecords(soqlQueryClause);
    System.assert(records != null, 'Failed to get records.');
  }
}
