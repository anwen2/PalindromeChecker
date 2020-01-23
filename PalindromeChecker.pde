public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String cool =  noSpaces(word);
  String bob = reverse(cool);
  if(bob.equals(cool))
  return true;
  else
  return false;
}
public String reverse(String str)
{
    String s = "";
    int last = str.length()-1;
    for(int i=last;i>=0;i--)
    {
      s+= str.substring(i,i+1);
    }
    return s;
}
public String noSpaces(String sWord){
  String result = "";
  for(int i=0;i<sWord.length();i++)
    if(Character.isLetter(sWord.charAt(i)))
      result+=sWord.substring(i,i+1);
    result = result.toLowerCase();
  return result;
}
