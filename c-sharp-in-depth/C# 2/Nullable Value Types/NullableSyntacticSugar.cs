/* Nullable <int> x is the same as int? x
   Nullable<int32> x is the same as int32? x 
   
   
   The following lines are equivalent: 
   - int? x = new int?();
   - int? x = null;
   Where both create a Nullable<int> struct with HasValue being false
   
   Which means these are also equivalent:
   - if (x != null)
   - if (x.HasValue)

   The following conversions are always available with respect to Nullable
   value types (with value types S and T - e.g. S is int, T is decimal):
    - Nullable<S> to Nullable<T> (implicit or explicit, depending on the original conversion)
    - S to Nullable<T> (implicit or explicit, depending on the original conversion) 
    - Nullable<S> to T (always explicit)
*/

/* The as operator and nullable value types
   This allows you to safely convert from an arbitrary reference to a value in a single step */
static void PrintValueAsInt32(object o)
{
    int? nullable = o as int?;
    Console.WriteLine(nullable.HasValue ?
                      nullable.Value.ToString() : "null");
}


PrintValueAsInt32(5); // 5
PrintValueAsInt32("some string"); // null

/* The null-coalescing operator ??
   Roughly speaking, a ?? b is evaluated:
   1. Evaluate a
   2. If the result is non-null, that's the result of the whole expression
   3. Otherwise, evaluate second, and use that as the result of the whole expression.
*/