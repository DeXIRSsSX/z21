namespace z1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] array = new int[10];
            Random rnd = new Random();
            for (int i = 0; i < array.Length; i++)
            {
                array[i] = rnd.Next(0,101);
            }
            foreach (int a in array)
            {
                Console.Write(a + " ");
            }
        }
    }
}