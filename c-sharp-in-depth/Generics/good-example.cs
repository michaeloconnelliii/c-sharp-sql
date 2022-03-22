/* ==== Problem Introduction ==== 
   
   Generating and printing an array of strings.
   
   The following are examples to do this is the best possible way using generics.
*/

/* List <T>

   Solves the problems mentioned in the previous examples:
   - Statically typed
   - Dynamically allocated
   - Flexible and reusable for other types
*/
static List<string> GenerateNames() {
    List<string> names = new List<string>(); names.Add("Gamma"); 
    names.Add("Vlissides"); 
    names.Add("Johnson");
    names.Add("Helm");
    return names;
}

static void PrintNames(List<string> names) {
    foreach (string name in names)
    {
        Console.WriteLine(name);
    }
}

/* Copying elements from one collection to another

   Ability to use generics in both the signature (parameters) and as
   a return type is a huge part of the power of generics.
*/
public static List<T> CopyAtMost<T> (List<T> input, int maxElements)
{
    int actualCount = Math.Min(input.Count, maxElements);
    List<T> ret = new List<T>(actualCount); 
    for (int i = 0; i < actualCount; i++)
    {
        ret.Add(input[i]);
    }
    return ret; 
}

static void Main()
{
    List<int> numbers = new List<int>();
    numbers.Add(5);
    numbers.Add(10);
    numbers.Add(20);
    List<int> firstTwo = CopyAtMost<int>(numbers, 2);
    Console.WriteLine(firstTwo.Count);
}

/* Generics can use their type parameters as type arguments when declaring
   a base class or implemented interface */
public class List<T> : IEnumerable<T>

/* You can write methods with the same name but a different generic
   arity, even if their signatures are the same */
public void Method() {}
public void Method<T>() {}
public void Method<T1, T2>() {}

/* === Stuff you can't do with parameters === */

// Can't overload solely by parmater name
public void Method<TFirst>()  {}
public void Method<TSecond>() {}

// Can't have the same named arguments (you CAN have same type arguments, though)
// Can't
public void Method<T, T>() {}

// Can
Dictionary<string, string>.

/* List of what cannot be generic
   - Fields
   - Properties
   - Indexers
   - Constructors 
   - Events
   - Finalizers
*/

// If you want to have a field that's the same type as the class, this works
// Note that the "generic" part of this is the type introduced to the class
public class ValidatingList<TItem>
{
    private readonly List<TItem> items = new List<TItem>(); 
}