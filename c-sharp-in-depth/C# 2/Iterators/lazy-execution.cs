/* IEnumerable is a sequence that can be iterated over.
   IEnumerator is a cursor within the sequence.

   IEnumerable.GetEnumerator() asks the sequence to create an IEnumerator
   that's set up to iterate over the sequence.
   One you have an IEnumerator, you repeatedly call MoveNext(). If it returns
   true, then you've moved to another value and you can access the Current property.
   Returning false means you've reached the end of the sequence. */

// Example
IEnumerable<int> enumerable = CreateSimpleIterator(); using (IEnumerator<int> enumerator =
enumerable.GetEnumerator())
{
    while (enumerator.MoveNext()) 
    {
        int value = enumerator.Current;
        Console.WriteLine(value);
    }
}