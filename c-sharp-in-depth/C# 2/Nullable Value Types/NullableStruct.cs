/* The Nullable<T> struct is a way of allowing for NULL value types. 
   
   The following is a primitive (and incomplete) example of how it might
   be implemented.

   The where T : struct constraint allows Nullable to be any value type, but not reference types.
   T is also the underlying type of Nullable<T>, therefore Nullable<int> has an underlying type int.
*/
public struct Nullable<T> where T : struct
{
    private readonly T value;
    private readonly bool hasValue;
    public Nullable(T value)
    {
        this.value = value;
        this.hasValue = true;
    }

    public bool HasValue { get { return hasValue; } }

    public T Value
    {
        get 
        {
            if (!hasValue)
            {
                throw new InvalidOperationException();
            }
            return value;
        }
    } 
}
/* All structs have an implicit parameterless constructor that, in this case,
   will leave hasValue as false and value as the default value of T */
Nullable<int> nullable = new Nullable<int>();
Console.WriteLine(nullable.HasValue); // False

// Example of using Nullable
public void DisplayMaxPrice(Nullable<decimal> maxPriceFilter)
{
    if (maxPriceFilter.HasValue) 
    {
        Console.WriteLine("Maximum price: {0}", maxPriceFilter.Value); 
    }
    else 
    {
        Console.WriteLine("No maximum price set.");
    }
}

/* The Nullable<T> struct has methods and operators available too:
   - GetValueOrDefault() : method will return the value in the struct or the default value for the type if HasValue is false.
   - GetValueOrDefault(T defaultValue) : method will return the value in the struct or the specified default value if HasValue is false.
   - The Equals(object) and GetHashCode() methods declared in object are overridden in a reasonably obvious way, first comparing the HasValue
     properties and then comparing the Value properties for equality if HasValue is true for both value.
   - There’s an implicit conversion from T to Nullable<T>, which always succeeds and returns a value where HasValue is true. 
     This is equivalent to calling the parameterized constructor.
   - There’s an explicit conversion from Nullable<T> to T, which either returns the encapsulated value (if HasValue is true) or throws an InvalidOperation- Exception (if HasValue is false). 
     This is equivalent to using the Value property.
*/

/* Boxing Behavior
   Boxing refers to assigning a reference type to a value type.
   Nullable value types behave differently than non-nullable value types when it comes to boxing.
*/

// Example 1 - o is a reference to an object of type "boxed int"
int x = 5;
object o = x;

/* Nullable value types have no boxed equivalent.
   - If HasValue is false, the result is a null reference.
   - If HasValue is true, the result is a reference to an object of type "boxed T"
*/

// Boxes a value where HasValue is false
Nullable<int> noValue = new Nullable<int>();
object noValueBoxed = noValue;
Console.WriteLine(noValueBoxed == null); // true

// Boxes a value where HasValue is true
Nullable<int> someValue = new Nullable<int>(5);
object someValueBoxed = someValue;
Console.WriteLine(someValueBoxed.GetType()); // Boxed int

// Calling GetType on nullable values leads to
Nullable<int> noValue = new Nullable<int>();
// Console.WriteLine(noValue.GetType()); // NullReferenceException


Nullable<int> someValue = new Nullable<int>(5);
Console.WriteLine(someValue.GetType()); // typeof(int)