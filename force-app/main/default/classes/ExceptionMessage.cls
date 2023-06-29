public with sharing class ExceptionMessage {
  public static final Map<String, String> MESSAGES = new Map<String, String>{
    'DynamicSoqlNotFoundSObject' => 'Field sObjectType must be SObject type.',
    'DynamicSoqlEmptyFieldFullNames' => 'Parameter soqlQueryClause.fieldFullNames must not be null and of size greater than 0.',
    'DynamicSoqlNullParentRelationName' => 'Parameter soqlQueryClause.parentRelationName must not be null.',
    'DynamicSoqlEmptyParentFieldFullNames' => 'Parameter soqlQueryClause.parentSoqlQueryClause.fieldFullNames must not be null and of size greater than 0.',
    'DynamicSoqlNullChildRelationName' => 'Parameter soqlQueryClause.childRelationName must not be null.',
    'DynamicSoqlEmptyChildFieldFullNames' => 'Parameter soqlQueryClause.childSoqlQueryClause.fieldFullNames must not be null and of size greater than 0.',
    'ObjectInfoNotFoundSObject' => 'Field sObjectType must be SObject type.',
    'ObjectPermissionNotFoundSObject' => 'Field sObjectType must be SObject type.',
    'ObjectRelationNotFoundSObject' => 'Field sObjectType must be SObject type.',
    'ObjectRecordTypeNotFoundSObject' => 'Field sObjectType must be SObject type.'
  };

  public class CustomException extends Exception {
  }
}
