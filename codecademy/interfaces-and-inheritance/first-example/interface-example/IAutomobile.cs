/* Interfaces allow for a well-defined blueprint for what a class SHOULD/MUST contain */
/* Note that interfaces cannot specify Constructors or Fields */
using System;

namespace LearnInterfaces
{
  interface IAutomobile
  {
    string LicensePlate { get; }
    double Speed { get; }
    int Wheels { get; }
    void Honk();
  }
}