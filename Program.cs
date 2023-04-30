using System;
using Microsoft.Quantum.Simulation.Core;
using Microsoft.Quantum.Simulation.Simulators;
using static BernsteinVazirani.BernsteinVaziraniAlgorithm;

namespace BernsteinVazirani
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] s = { 1, 0, 1, 1 };
            var sQArray = new QArray<long>(Array.ConvertAll(s, x => (long)x)); // Convert int[] to IQArray<long>
            using var sim = new QuantumSimulator();
            var result = BernsteinVaziraniAlgorithm.Run(sim, sQArray).Result;
            Console.WriteLine($"The secret string s = {String.Join("", s)}");
            Console.WriteLine($"The computed string r = {Convert.ToString(result, 2).PadLeft(s.Length, '0')}");
        }
    }
}