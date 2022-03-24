/* The default operator is easily described:
   The operand is the name of a type or type parameter.
   
   The result is the default type for that type - the same value you'd get
   if you declared a field and didn't immediately assign a value to it:
   - For reference types, that's a null reference
   - For non-nullable value types, it's the "all zeros" value 
     (0, 0, 0, 0m, false, the UTF-16 code unit with a numerical value of 0 and so on)
*/

// The default operator can be used with type parameters and with generic types with the appropriate argument supplied
// All of these are valid:
default(T)
default(int)
default(string)
default(List<T>)
default(List<List<string>>)

// Example using default for the initial value for a variable that may or may not be assigned a different value later
public T LastOrDefault(IEnumerable<T> source)
{
    T ret = default(T); 
    foreach (T item in source) {
        ret = item;
        return ret;
    }
}