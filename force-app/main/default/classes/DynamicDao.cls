public inherited sharing class DynamicDao {
  private System.Type sObjectType;

  private static final String SELECT_STRING = 'SELECT ';
  private static final String FROM_STRING = ' FROM ';
  private static final String WHERE_STRING = ' WHERE ';
  private static final String WITH_STRING = ' WITH ';
  private static final String GROUP_STRING = ' GROUP BY ';
  private static final String ORDER_STRING = ' ORDER BY ';
  private static final String LIMIT_STRING = ' LIMIT ';
  private static final String OFFSET_STRING = ' OFFSET ';
  private static final String FOR_VIEW_STRING = ' FOR VIEW ';
  private static final String FOR_REFERENCE_STRING = ' FOR REFERENCE ';
  private static final String UPDATE_STRING = ' UPDATE ';
  private static final String FOR_UPDATE_STRING = ' FOR UPDATE ';
  private static final String COUNT_STRING = ' COUNT() ';

  /**
   * @description Constructor providing object type.
   * @param sObjectType SObject type.
   */
  public DynamicDao(System.Type sObjectType) {
    if (Schema.getGlobalDescribe().get(sObjectType.toString()) == null) {
      throw new ExceptionMessage.CustomException(ExceptionMessage.MESSAGES.get('dynamicDaoNotFoundSObject'));
    }
    this.sObjectType = sObjectType;
  }

  /**
   * @description Gets the records of sObjectType.
   * @param soqlQueryClause SoqlQueryClause object reference.
   * @return List of sObjectType class.
   * @example
   */
  public List<SObject> getSObjectRecords(SoqlQueryClause soqlQueryClause) {
    List<SObject> recordList = new List<SObject>();

    validatesSoqlClaseForSelfDml(soqlQueryClause);

    String queryStr = getSoqlQuery(soqlQueryClause, false);
    recordList = Database.query(queryStr);
    return recordList;
  }

  /**
   * @description Gets the records of sObjectType.
   * @param fieldFullNames List of Field API Names
   * @return List of sObjectType class.
   * @example
   */
  public List<SObject> getSObjectRecords(List<String> fieldFullNames) {
    SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
    soqlQUeryClause.fieldFullNames = fieldFullNames;
    return getSObjectRecords(soqlQueryClause);
  }

  /**
   * @description Gets the parent-records of sObjectType.
   * @param soqlQueryClause SoqlQueryClause object referenece.
   * @return List of sObjectType's parent-object class.
   * @example
   */
  public List<SObject> getSObjectRecordsOfParent(SoqlQueryClause soqlQueryClause) {
    List<SObject> recordList = new List<SObject>();

    validatesSoqlClauseForParentDml(soqlQueryClause);
    if (soqlQueryClause.fieldFullNames == null) {
      soqlQueryClause.fieldFullNames = new List<String>();
    }
    for (String fieldFullName : soqlQUeryClause.parentSoqlQueryClause.fieldFullNames) {
      soqlQueryClause.fieldFullNames.add(
        soqlQueryClause.parentSoqlQueryClause.parentRelationName + '.' + fieldFullName
      );
    }
    recordList = getSObjectRecords(soqlQueryClause);
    return recordList;
  }

  /**
   * @description Gets the parent-records of sObjectType.
   * @param parentRelationName Parent relation name.
   * @param parentFieldFullNames Field fullNames of parent-object.
   * @return List of sObjectType's parent-object class.
   * @example
   */
  public List<SObject> getSObjectRecordsOfParent(String parentRelationName, List<String> parentFieldFullNames) {
    SoqlQueryClause parentSoqlQueryClause = new SoqlQueryClause();
    parentSoqlQueryClause.parentRelationName = parentRelationName;
    parentSoqlQueryClause.fieldFullNames = parentFieldFullNames;
    SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
    soqlQueryClause.parentSoqlQUeryClause = parentSoqlQueryClause;
    return getSObjectRecordsOfParent(soqlQueryClause);
  }

  /**
   * @description Gets the child-records of sObjectType.
   * @param soqlQueryClause SoqlQueryClause object referenece.
   * @return List of sObjectTypes's child-object class.
   * @example
   */
  public List<SObject> getSObjectRecordsInChild(SoqlQueryClause soqlQueryClause) {
    List<SObject> recordList = new List<SObject>();

    validatesSoqlClauseForChildDml(soqlQueryClause);

    String childSubQueryStr = getSoqlQuery(soqlQueryClause.childSoqlQueryClause, true);
    if (soqlQueryClause.fieldFullNames == null) {
      soqlQueryClause.fieldFullNames = new List<String>();
    }
    soqlQueryClause.fieldFullNames.add(childSubQueryStr);
    recordList = getSObjectRecords(soqlQueryClause);
    return recordList;
  }

  /**
   * @description Gets the child-records of sObjectType.
   * @param childRelationName Relation name of child-object. Example: Accounts, CustomObj__r.
   * @param childFieldFullNames Field API Names of child-object.
   * @return List of sObjectTypes's child-object class.
   * @example
   */
  public List<SObject> getSObjectRecordsInChild(String childRelationName, List<String> childFieldFullNames) {
    SoqlQueryClause childSoqlQueryClause = new SoqlQueryClause();
    childSoqlQUeryClause.childRelationName = childRelationName;
    childSoqlQUeryClause.fieldFullNames = childFieldFullNames;
    SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
    soqlQueryClause.childSoqlQUeryClause = childSoqlQueryClause;
    return getSObjectRecordsInChild(soqlQueryClause);
  }

  /**
   * @description Counts the number of records of sObjectType.
   * @param soqlQueryClause SoqlQueryClause object reference.
   * @return List of AggregateResult class.
   * @example
   */
  public List<AggregateResult> countSObjectRecords(SoqlQueryClause soqlQueryClause) {
    List<AggregateResult> numberOfRecords = new List<AggregateResult>();
    String queryStr = SELECT_STRING;
    soqlQueryClause.fieldFullNames.add(COUNT_STRING.replace('()', '(' + soqlQUeryClause.countClause + ')'));
    queryStr += String.join(soqlQueryClause.fieldFullNames, ', ') + FROM_STRING + sObjectType.toString();
    numberOfRecords = getSObjectRecords(soqlQUeryClause);
    return numberOfRecords;
  }

  /**
   * @description Counts the number of records of sObjectType
   * @param groupClause Group clause for SOQL query.
   * @return List of AggregateResult class.
   * @example
   */
  public List<AggregateResult> countSObjectRecords(String groupClause) {
    SoqlQueryClause soqlQueryClause = new SoqlQueryClause();
    soqlQUeryClause.groupClause = groupClause;
    return countSObjectRecords(soqlQueryClause);
  }

  private String getSoqlQuery(SoqlQueryClause soqlQueryClause, Boolean isChildSubQuery) {
    String queryStr = SELECT_STRING;
    queryStr += String.join(soqlQueryClause.fieldFullNames, ', ');
    if (isChildSubQuery) {
      queryStr += FROM_STRING + soqlQueryClause.childRelationName;
    } else {
      queryStr += FROM_STRING + sObjectType.toString();
    }
    if (soqlQueryClause.whereClause != null) {
      queryStr += WHERE_STRING + soqlQueryClause.whereClause;
    }
    if (soqlQueryClause.withClause != null) {
      queryStr += WITH_STRING + soqlQueryClause.withClause;
    }
    if (soqlQueryClause.orderClause != null) {
      queryStr += ORDER_STRING + soqlQueryClause.orderClause;
    }
    if (soqlQueryClause.limitClause != null) {
      queryStr += LIMIT_STRING + soqlQueryClause.limitClause;
    }
    if (soqlQueryClause.offsetClause != null) {
      queryStr += OFFSET_STRING + soqlQueryClause.offsetClause;
    }
    if (soqlQueryClause.isForView != null && soqlQueryClause.isForView) {
      queryStr += FOR_VIEW_STRING;
    }
    if (soqlQueryClause.isForReference != null && soqlQueryClause.isForReference) {
      queryStr += FOR_REFERENCE_STRING;
    }
    if (soqlQueryClause.updateClause != null) {
      queryStr += UPDATE_STRING + soqlQueryClause.updateClause;
    }
    if (soqlQueryClause.isForUpdate != null && soqlQueryClause.isForUpdate) {
      queryStr += FOR_UPDATE_STRING;
    }

    if (isChildSubQuery) {
      queryStr = '(' + queryStr + ')';
    }
    System.debug(queryStr);
    return queryStr;
  }

  private void validatesSoqlClaseForSelfDml(SoqlQueryClause soqlQUeryClause) {
    if (soqlQueryClause.fieldFullNames == null || soqlQueryClause.fieldFullNames.size() == 0) {
      throw new ExceptionMessage.CustomException(ExceptionMessage.MESSAGES.get('dynamicDaoEmptyFieldFullNames'));
    }
  }

  private void validatesSoqlClauseForParentDml(SoqlQueryClause soqlQUeryClause) {
    if (soqlQueryClause.parentSoqlQueryClause.parentRelationName == null) {
      throw new ExceptionMessage.CustomException(ExceptionMessage.MESSAGES.get('dynamicDaoNullParentRelationName'));
    }
    if (
      soqlQueryClause.parentSoqlQueryClause.fieldFullNames == null ||
      soqlQueryClause.parentSoqlQueryClause.fieldFullNames.size() == 0
    ) {
      throw new ExceptionMessage.CustomException(ExceptionMessage.MESSAGES.get('dynamicDaoEmptyParentFieldFullNames'));
    }
  }

  private void validatesSoqlClauseForChildDml(SoqlQueryClause soqlQUeryClause) {
    if (soqlQueryClause.childSoqlQueryClause.childRelationName == null) {
      throw new ExceptionMessage.CustomException(ExceptionMessage.MESSAGES.get('dynamicDaoNullChildRelationName'));
    }
    if (
      soqlQueryClause.childSoqlQueryClause.fieldFullNames == null ||
      soqlQueryClause.childSoqlQueryClause.fieldFullNames.size() == 0
    ) {
      throw new ExceptionMessage.CustomException(ExceptionMessage.MESSAGES.get('dynamicDaoEmptyChildFieldFullNames'));
    }
  }
}
