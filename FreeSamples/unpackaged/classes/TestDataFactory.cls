@isTest
public class TestDataFactory {
	
    public static final string ACCOUNT_CITY_TEST_VARIABLE = 'San Fran';
    public static final string ACCOUNT_STREET_TEST_VARIABLE = 'Blinker Street';
    public static final string ACCOUNT_STATE_TEST_VARIABLE = 'CA';
    
    
    public static final integer NUM_OF_ACCOUNTS = 4;
    public static final integer NUM_OF_CONTACTS_PER_ACCOUNT = 5;
    public static final string TEST_STRING = 'test';
    
    public static Account createSingleAccount(){
        account a = new account(name = 'test');
        insert a;
        return a;
    }
    
     public static Integer createPrime(){
        integer a = 49;
         return a;
    }
    
   public static Integer createNonPrime(){
        integer a = 48;
         return a;
    }
    
    public static List<Account> createAccountsWithContacts(Integer numAccts, Integer contactsPerAcct) {
        List<Account> accts = new List<Account>();
        
        for(Integer i=0;i<numAccts;i++) {
            Account a = new Account(Name=TEST_STRING + i, ShippingState='NY');
            accts.add(a);
        }
        insert accts;
        
        List<Contact> cts = new List<Contact>();
        for (Integer j=0;j<numAccts;j++) {
            Account acct = accts[j];
            // For each account just inserted, add contacts
            for (Integer k=0;k<ContactsPerAcct;k++) {
                cts.add(new Contact(firstName=TEST_STRING + string.valueof(k),
                                       lastName=string.valueOf(k),
                                       AccountId=acct.Id));
            }
        }
        // Insert all contacts for all accounts.
        insert cts;
        
        return accts;
    
    
}
}