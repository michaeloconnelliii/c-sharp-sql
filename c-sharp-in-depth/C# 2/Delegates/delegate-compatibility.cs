// Suppose you have
public delegate void Printer(string message);
public void PrintAnything(object obj) {
    Console.WriteLine(obj);
}

// In C#2 you can create an instance of Printer to effectively wrap
// the PrintAnything method
Printer p1 = new Printer(PrintAnything);
Printer p2 = PrintAnything;

// Now suppose in addition you have
public delegate void GeneralPrinter(object obj);
GeneralPrinter generalPrinter = ...;
Printer printer = new Printer(generalPrinter);

// This is fine b/c any argument passed to Printer can safely be passed to GeneralPrinter

// This does NOT work
public delegate void Int32Printer(int x);
public delegate void Int64Printer(long x);
Int64Printer int64Printer = ...;
Int32Printer int32Printer =
    new Int32Printer(int64Printer); // Error
// B/c there's implicit conversion from int to long this doesn't work