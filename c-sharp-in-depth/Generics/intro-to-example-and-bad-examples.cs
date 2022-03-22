/* ==== Problem Introduction ==== 
   
   Generating and printing an array of strings.
   
   The following are examples to do this is a non-ideal way.
*/

/* Arrays
   
   Pros: Statically typed
   Cons: NOT dynamically allocated
*/
static string[] GenerateNames() {
string[] names = new string[4]; names[0] = "Gamma";
names[1] = "Vlissides"; names[2] = "Johnson";
    names[3] = "Helm";
    return names;
}

static void PrintNames(string[] names) {
    foreach (string name in names)
    {
        Console.WriteLine(name);
    }
}

/* ArrayList

   Pros: Dynamically allocated
   Cons: NOT statically typed
*/
static ArrayList GenerateNames() {
ArrayList names = new ArrayList(); names.Add("Gamma"); names.Add("Vlissides"); names.Add("Johnson"); names.Add("Helm");
    return names;
}

static void PrintNames(ArrayList names) {
    foreach (string name in names)
    {
        Console.WriteLine(name);
    }
}

/* StringCollection

   Pros: Both dynamically allocated and statically typed
   Cons: Not flexible: If you have collections of other types, 
                       we have to have a collection for every single type in 
                       order for the same functionality we’re using in our string collection.
*/
static StringCollection GenerateNames() {
StringCollection names = new StringCollection(); names.Add("Gamma");
names.Add("Vlissides");
names.Add("Johnson");
    names.Add("Helm");
    return names;
}

static void PrintNames(StringCollection names) {
    foreach (string name in names)
    {
        Console.WriteLine(name);
    }
}