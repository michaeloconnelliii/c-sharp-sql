// Type inference for type arguments to methods
public static List<T> CopyAtMost<T>(List<T> input, int maxElements);

// In main...
List<int> numbers = new List<int>();
// ...
List<int> firstTwo = CopyAtMost<int>(numbers, 2);

// Can be simplified to..
List<int> numbers = new List<int>();
...
List<int> firstTwo = CopyAtMost(numbers, 2);