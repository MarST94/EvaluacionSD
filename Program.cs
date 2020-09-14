using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PromedioNumeros
{
    class Program
    {
        static void Main(string[] args)
        {
            int i = 0;
            float num, acu = 0;

            while (i < 3)
            {
                Console.Write("Ingrese {0}º número:", i + 1);
                num = float.Parse(Console.ReadLine());
                acu += num;
                i++;
            }
            Console.Write("El promedio de los 3 números es {0}", acu / 3);
            Console.Read();
        }
    }
}
