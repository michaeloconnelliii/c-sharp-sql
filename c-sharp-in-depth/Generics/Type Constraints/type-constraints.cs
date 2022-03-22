// The "Where" constraint ensures that T must implement the IFormattable interface
// Without it, the ToString method isn't guarenteed to work and will yield a compiler error
static void PrintItems<T>(List<T> items) where T : IFormattable
{
    CultureInfo culture = CultureInfo.InvariantCulture;
    foreach (T item in items)
    {
Console.WriteLine(item.ToString(null, culture)); }
}

/* Type constraints aren't limited to interfaces. 
   
   The following constraints are also available:
   - Reference type constraint - where T : class
     class doesn't mean only classes, it can be any reference type
     including interfaces and delegates
   
   - Value type constraints - where T : struct
     The type argument must be a non-nullable value type (either struct or enum)

   - Constructor constraint - where T : SomeType
     SomeType can be a class, an interface, or another type parameter
*/

// Putting a type parameter in the constraint itself
public void Sort(List<T> items) where T : IComparable<T>

// This uses T as the type argument to the generic IComparable<T> interface
// This allows our sorting method to compare elements from the items parameter pairwise
// using the CompareTo method from IComparable<T>
T first = ...;
T second = ...;
int comparison = first.CompareTo(second);

// When multiple type parameters exist in a generic declaration,
// each type parameter can have an entirely different set of constraints
TResult Method<TArg, TResult>(TArg input) // generic method with two type parameters, TArg and TResult
    where TArg : IComparable<TArg>
    where TResult : class, new() // Reference type with parameterless constructor