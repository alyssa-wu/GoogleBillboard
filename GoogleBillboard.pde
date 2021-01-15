public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  

public void setup()  
{            
    String digits;
    for(int i = 1; i < e.length()-10; i++) //goes through all numbers in e minus 10
    {
      digits = e.substring(i,i+10); 
      if(isPrime(Double.parseDouble(digits))) //if digits is prime
      {
        double dNum = Double.parseDouble(digits); //digits goes into dNum
        System.out.println(dNum); //print dNum to the console
        break; //stop for loop
      }
    }
}  

public boolean isPrime(double dNum)  
{   
  if(dNum < 2)
  {
   return false;
  }
  for(int i = 2; i <= Math.sqrt(dNum); i++)
  {
    if(dNum % i == 0)
    {
      return false;   
    }
  }
  return true;  
} 

public void draw()  
{   
  //not needed for this assignment
}  
