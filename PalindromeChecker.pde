public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) {
    if(palindrome(stripNonAlpha(lines[i]))==true){
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
  String backwards = "";
  for(int i=word.length(); i>0; i--){
    backwards = backwards + word.substring(i-1, i);
  }
  if(backwards.equals(word)){
    return true;
  } else {
    return false;
  }
}

public String stripNonAlpha(String word){
  String result = "";
  for(int i=0; i<word.length(); i++){
    if(Character.isLetter(word.charAt(i))==true){
      result = result + word.substring(i, i+1);
    }
  }
  return result.toLowerCase();
}
