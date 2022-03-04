// Note string concatenation will implicitly convert an int to a string
using System;

namespace StoryTime
{
  class Program
  {
    static void Main(string[] args)
    {
      // Declare the variables
      string beginning = "The small dog";
      string middle = "was barking a lot";
      string end = "because it was upset";

      // Concatenate the string and the variables
      string story = beginning + " " + middle + " " + end;


      // Print the story to the console 
      Console.WriteLine(story);
    }
  }
}
