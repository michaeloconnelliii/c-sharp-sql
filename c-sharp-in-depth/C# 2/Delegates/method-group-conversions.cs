/* Method group refers to one or more methods with the same name.
   
   For example Console.WriteLine is a method group - the compiler looks
   at its arguments to determine which of the method group should be invoked
   (Console.WriteLine may take a string, no arguments, etc.)

   Method group conversions allow a shorthand to convert to a delegate type
   with a signature that's compatible with one of the overloads.
   
   Recall that delegates are references to functions that can be passed as arguments/
   returned by other functions. They're extremely useful for implementing events and call-back
   methods. */

// This allows us to simplify
private void HandleButtonClick(object sender, EventArgs e);
EventHandler handler = new EventHandler(HandleButtonClick);

// To
EventHandler handler = HandleButtonClick;

// We can also use method group conversions for event subscription and removal, too
button.Click += HandleButtonClick;