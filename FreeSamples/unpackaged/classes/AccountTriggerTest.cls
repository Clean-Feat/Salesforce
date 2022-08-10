@isTest
private class AccountTriggerTest {
	
    @isTest
    static void AccountAddressUpdate(){
	list<Account> accountsToUpdate = TestDataFactory.createAccountsWithContacts(TestDataFactory.NUM_OF_ACCOUNTS, TestDataFactory.NUM_OF_CONTACTS_PER_ACCOUNT);
    list<account> accountUpdates = new list<account>(); 
        
        for(account a: accountsToUpdate){
            a.ShippingCity = TestDataFactory.ACCOUNT_CITY_TEST_VARIABLE;
            a.shippingState = TestDataFactory.ACCOUNT_STATE_TEST_VARIABLE;
            a.shippingStreet = TestDataFactory.ACCOUNT_STREET_TEST_VARIABLE;
            accountUpdates.add(a);
        }
        test.startTest();
        update accountUpdates;
        test.stopTest();
        
    }
}