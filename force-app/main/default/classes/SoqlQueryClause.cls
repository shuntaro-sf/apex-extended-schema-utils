public with sharing class SoqlQueryClause {
  public List<String> fieldFullNames;
  public String whereClause;
  public String orderClause;
  public String groupClause;
  public String havingClause;
  public String withClause;
  public Integer limitClause;
  public Integer offsetClause;
  public Boolean isForView;
  public Boolean isForReference;
  public String updateClause;
  public Boolean isForUpdate;
  public String countClause;

  public String childRelationName;
  public SoqlQueryClause childSoqlQueryClause;

  public String parentRelationName;
  public SoqlQueryClause parentSoqlQueryClause;
}
