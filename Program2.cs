using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Suma_Numeros
{
    class Program
    {
        static void Main(string[] args)
        {
            int suma = 0;
            int numero = 0;
            const int n = 10;
            while (numero < n)
            {
                numero = numero + 1;
                suma = suma + numero;
            }
            System.Console.WriteLine("La suma es: " + suma);
            Console.Read();
        }
    }
}
