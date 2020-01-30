public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public boolean isVowel(String sWord) {
  if (sWord.equals("a")||sWord.equals("e")||sWord.equals("i")||sWord.equals("o")||sWord.equals("u"))
    return true;
  return false;
}

public int findFirstVowel(String sWord) {
  for (int i = 0; i < sWord.length()+30; i++) {
    if (i < sWord.length() && isVowel(sWord.substring(i, i+1)) == true) {
      return(i);
    }
  }
  return -1;
}

public String pigLatin(String sWord)
{
  if (findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  } else if (findFirstVowel(sWord)>-1) {
    return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
  } else {
    return "ERROR!";
  }
}
