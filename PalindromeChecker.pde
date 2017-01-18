public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(noSpaces(numLetters(noCapitals(word)))).equals(noSpaces(numLetters(noCapitals(word)))))
    return true;
  else 
    return false;
}
public String reverse(String str)
{

  String sNew = new String();
  int newFirst=str.length()-1;
  for(int i=newFirst;i>=0;i--)
    sNew=sNew+str.substring(i,i+1);
  return sNew;
}
public String noSpaces(String sWord){
  String s=new String();
  for(int i=0;i<sWord.length();i++)
    if(sWord.substring(i,i+1).equals(" ")==false)
      s=s+sWord.substring(i,i+1);
  return s;
}
public String numLetters(String sString){
  String s=new String();
  for(int i=0;i<sString.length();i++)
    if(Character.isLetter(sString.charAt(i))==true)
      s=s+sString.substring(i,i+1);
  return s;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
