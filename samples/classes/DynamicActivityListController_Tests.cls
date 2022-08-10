@isTest
private class DynamicActivityListController_Tests {
    
    @isTest
    //an object with activities enabled
    static void testgetSobjectNamePositive() {
       account testAccount = TestDataFactory.createSingleAccount();
        
        Test.startTest();
        ApexPages.StandardController sc = new ApexPages.StandardController(testAccount);
        PageReference pageRef = Page.ActivityRelatedLists;
        pageRef.getParameters().put('id', String.valueOf(testAccount.Id));
        Test.setCurrentPage(pageRef);
    	DynamicActivityListController.getSobjectName();
        test.stopTest();
        
     
        
        }
    
     @isTest
    //an object with activities enabled
    static void testgetSobjectNameNegative() {
       account testAccount = TestDataFactory.createSingleAccount();
        
        Test.startTest();
        ApexPages.StandardController sc = new ApexPages.StandardController(testAccount);
    	DynamicActivityListController.getSobjectName();
        test.stopTest();
        
     
        
        }
    
     

}