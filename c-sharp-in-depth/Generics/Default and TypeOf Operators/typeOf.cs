/* Four broad cases to consider with typeof:
   1. No generics involved at all; for example, typeof(string)
   2. Generics involved but no type parameters; for example, typeof(List<int>)
   3. Just a type parameter; for example, typeof(T)
   4. Generics involved using a type parameter in the operand; for example,
      typeof(List<TItem>) within a generic method declaring a type parameter
      called TItem
   5. Generics involved but no type arguments specified in the operand; for exam-
      ple, typeof(List<>)

    Return values:
    1. string
    2. Type representing List<T> with type argument as int
    3. Returns whatever the type argument for T is at that point in the code
    4. This syntax is only valid in the typeof operator and refers to the generic type definition.
       This gets you the generic type definition (e.g. to get type definition of Dictionary<TKey, TValue>, you'd use typeof(Dictionary<,>))
       To get the definition for Tuple<T1, T2, T3>, you'd use typeof(Tuple<,,>)
*/