public inherited sharing class AccountTriggerHelper {
	public static void accountAddressChange (list<account> accounts, map<id,account> newAccts, map<id,account> oldAccts) {
		list<account> changedAccounts = new list<account>();
		list<contact> contacts = new list<contact>();		
		
  for(account a:accounts){
		account oldAccount = oldAccts.get(a.id);
		if(a.ShippingCity != oldAccount.ShippingCity 
		|| a.ShippingStreet != oldAccount.ShippingStreet
		 || a.ShippingState != oldAccount.ShippingState
		 || a.shippingPostalCode != oldAccount.ShippingPostalCode
		 || a.shippingCountry != oldAccount.shippingCountry ) {
			changedAccounts.add(a);
}			
	
		}
for(contact c: [select id, accountid from contact where accountId in:ChangedAccounts WITH SECURITY_ENFORCED] ) {
		account a = newAccts.get(c.accountId);
    	c.mailingStreet = a.ShippingStreet;
	c.mailingCity = a.ShippingCity;
	c.mailingState = a.ShippingState;
	c.mailingPostalCode = a.ShippingPostalCode;
	c.mailingCountry = a.ShippingCountry;
		contacts.add(c);
	}
update contacts;

	}
}