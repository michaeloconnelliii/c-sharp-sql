// The static class has a set of overloaded Create factory methods like this
public static Tuple<T1> Create<T1>(T1 item1)
{
    return new Tuple<T1>(item1);
}
public static Tuple<T1, T2> Create<T1, T2>(T1 item1, T2 item2)
{
    return new Tuple<T1, T2>(item1, item2);
}

// Without them, you'd have to write
new Tuple<int, string, int>(10, "x", 20);

// With them, you can simplify this to
Tuple.Create(10, "x", 20);