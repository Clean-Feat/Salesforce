@isTest
private class PrimeNumbersTest {
    
    @isTest
    static void isPrimePositive(){
        integer prime = TestDataFactory.createPrime();
        boolean testResult = PrimeNumbers.isPrime(prime);
        system.assertEquals(true, testResult);
    }
    
    @isTest
    static void isPrimeNegative(){
        integer isNotPrime = TestDataFactory.createNonPrime();
       boolean testResult = PrimeNumbers.isPrime(isNotPrime);
        system.assertEquals(false, testResult);
        
    }
    
     @isTest
    static void is2Prime() {
        integer isTwo = 2;
        boolean testResult = PrimeNumbers.isPrime(isTwo);
        system.assertEquals(true, testResult);
    }
    
    @isTest
    static void isPrimeCatch(){
        try {
        Integer emptyInt;
        PrimeNumbers.isPrime(emptyInt);
        } catch (exception e){
            
        }
    }

}
