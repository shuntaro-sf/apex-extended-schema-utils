public with sharing class ExceptionMessage {
  public static final Map<String, String> MESSAGES = new Map<String, String>{
    'dynamicDaoNotFoundSObject' => 'Field sObjectType must be SObject type.',
    'dynamicDaoEmptyFieldFullNames' => 'Parameter soqlQueryClause.fieldFullNames must not be null and of size greater than 0.',
    'dynamicDaoNullParentRelationName' => 'Parameter soqlQueryClause.parentRelationName must not be null.',
    'dynamicDaoEmptyParentFieldFullNames' => 'Parameter soqlQueryClause.parentSoqlQueryClause.fieldFullNames must not be null and of size greater than 0.',
    'dynamicDaoNullChildRelationName' => 'Parameter soqlQueryClause.childRelationName must not be null.',
    'dynamicDaoEmptyChildFieldFullNames' => 'Parameter soqlQueryClause.childSoqlQueryClause.fieldFullNames must not be null and of size greater than 0.',
    'ObjectInfoNotFoundSObject' => 'Field sObjectType must be SObject type.',
    'ObjectPermissionNotFoundSObject' => 'Field sObjectType must be SObject type.',
    'objectRelationNotFoundSObject' => 'Field sObjectType must be SObject type.'
  };

  public class CustomException extends Exception {
  }
}
