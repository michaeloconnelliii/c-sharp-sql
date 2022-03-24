// Example 1
/* Each closed, constructed type is initialized seperately and has its
   own indepedent set of static fields.

   Therefore, GenericCounter<string> is indepdendent from GenericCounter<int>

*/
class GenericCounter<T>
{
    private static int value;
    static GenericCounter()
    {
        Console.WriteLine("Initializing counter for {0}", typeof(T));
    }

    public static void Increment()
    {
        value++; 
    }

    public static void Display()
    {
        Console.WriteLine("Counter for {0}: {1}", typeof(T), value);
    }
}

class GenericCounterDemo
{
    static void Main()
    {
        GenericCounter<string>.Increment();
        GenericCounter<string>.Increment();
        GenericCounter<string>.Display();
        GenericCounter<int>.Display();
        GenericCounter<int>.Increment();
        GenericCounter<int>.Display();
    } 
}

/* Output:

    Initializing counter for System.String
    Counter for System.String: 2
    Initializing counter for System.Int32
    Counter for System.Int32: 0
    Counter for System.Int32: 1
*/

// Example 2
/* Here, the following types are indepdent and each has its own value field:
   - Outer<string>.Inner<string>  Outer<string>.Inner<int>
   - Outer<int>.Inner<string>
   - Outer<int>.Inner<int>
*/
class Outer<TOuter>
{
    class Inner<TInner>
    {
        static int value;
    }
}