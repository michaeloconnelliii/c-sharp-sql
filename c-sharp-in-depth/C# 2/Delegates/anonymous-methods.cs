/* Anonymous methods allow you to create a delegate instance
   without having a real method to refer to */

// Event handler that logs to console when fired
EventHandler handler = delegate 
{
    Console.WriteLine("Event raised");
};

/* The real power for an anonymous method is closure.
   Closure is the ability to access all the variables that are in the scope
   of its declaration, even if those variables normally wouldn't be available anymore
   when the delegate is executed */
void AddClickLogger(Control control, string message) 
{
    control.Click += delegate
    {
        Console.WriteLine("Control clicked: {0}", message);
    }
}
