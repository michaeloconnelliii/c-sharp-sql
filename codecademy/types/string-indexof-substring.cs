using System;

namespace NameGrab
{
  class Program
  {
    static void Main(string[] args)
    {
      // User Name
      string name = "Farhad Hesam Abbasi";

      // Get first letter
      int firstLetterIndex = name.IndexOf("F");
      char firstLetter = name[firstLetterIndex];
      // Get last name
      int lastNameStartingIndex = name.IndexOf("Abbasi");
      string lastName = name.Substring(lastNameStartingIndex);

      // Print results
      Console.WriteLine(firstLetter);
      Console.WriteLine();
      Console.WriteLine(lastName);
    }
  }
}
