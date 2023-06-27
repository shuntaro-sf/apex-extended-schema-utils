@isTest(SeeAllData=false)
private with sharing class SoqlQueryClauseTest {
  @isTest
  private static void testInstantiateSoqlQueryClause() {
    SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
    System.assert(soqlQueryClause != null, 'Failed to instantiate SoqlQueryClause object.');
  }
}
