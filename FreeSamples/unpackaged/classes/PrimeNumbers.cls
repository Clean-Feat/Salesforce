public class PrimeNumbers {
    //trial division algorithm
   
    public static Boolean isPrime(Integer num){

        Boolean isPrime = false;
        
        try{
        
        if(num ==2){
            isPrime= true;
            return isPrime;
        
        } else{
                        

        for (Integer i = 2; i < math.sqrt(num) + 1; i++){

            if (Math.mod(num, i) != 0){

                isPrime = true;

            } else{

                isPrime = false;

                break;

            }

        }
       

    }
       	 } catch(exception e){
            //system.debug(e.getMessage());
        }
        
         return isPrime;
    }
    
}
