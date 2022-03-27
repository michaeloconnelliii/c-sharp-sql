/* Iterators were made to iterate through IEnumerable interfaces 
   
   An iterator is a method or property implemented with an iterator block,
   which is a block of code using the yield return or yield break statements.

   Iterator blocks can be used only to implement methods or properties with one of the following return types:
   - IEnumerable
   - IEnumerable<T> (where T can be a type parameter or a regular type) 
   - IEnumerator
   - IEnumerator<T> (where T can be a type parameter or a regular type)

   Each iterator has a yield type based on its return type. If the return type is one of the non-generic
   interfaces, the yield type is object. Otherwise, it's the type argument provided to the interface.

   Yield return statements provide values for returned sequence, and yield break
   statements will terminate a sequence. */

// Simple example
static IEnumerable<int> CreateSimpleIterator()
{
    yield return 10;
    for (int i = 0; i < 3; i++) {
        yield return i; 
    }

    yield return 20; 
}


foreach (int value in CreateSimpleIterator())
{
    Console.WriteLine(value);
}

/* Which will print:
   10 
   0 
   1 
   2 
   20
*/