public class DynamicActivityListController 

{
    
    public static sobject getSobjectName(){
        try{
            
        Id objId = System.currentPageReference().getParameters().get('id');
       	Schema.SObjectType sobjectType = objId.getSObjectType();
		String sobjectName = sobjectType.getDescribe().getName();
        SObject returnRecord = Database.query('Select Id, Name From ' + sobjectName + ' Where Id = :objId');
        getHasActivitiesEnabled();
        return returnRecord; 
        } catch (exception e){
            sobject emptySobject;
            system.debug(emptySobject);
            return emptySobject;
            
        }
    }
    
    public static boolean getHasActivitiesEnabled(){
        
        boolean returnResult = false;
        Id objId = System.currentPageReference().getParameters().get('id');
       	Schema.SObjectType sobjectType = objId.getSObjectType();
		String sobjectName = sobjectType.getDescribe().getName();
       for (Schema.SObjectType objectType : Task.WhatId.getDescribe().getReferenceTo()) {   
   			string obName = string.valueOf(objectType);
    			if(obName == sobjectName){
        				returnResult = true;
    					}
           
           
				}
       
        return returnResult;
    	}	


}