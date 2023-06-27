@isTest(SeeAllData=false)
private without sharing class ExceptionMessageTest {
  @isTest
  private static void testGetExceptionMessages() {
    Map<String, String> exceptionMessages = ExceptionMessage.MESSAGES;
    System.assert(exceptionMessages != null, 'Failed to get exception messages.');
  }
}
