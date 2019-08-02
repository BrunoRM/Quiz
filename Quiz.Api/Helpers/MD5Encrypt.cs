using System.Security.Cryptography;
using System.Text;

namespace Quiz.Api.Helpers
{
    public class MD5Encrypt
    {
        public string GetHash(string word)
        {
            var md5Provider = MD5.Create();
            byte[] data = md5Provider.ComputeHash(Encoding.UTF8.GetBytes(word));

            StringBuilder sBuilder = new StringBuilder();

            for (int i = 0; i < data.Length; i++)
            {
                sBuilder.Append(data[i].ToString("x2"));
            }

            return sBuilder.ToString();
        }
    }
}
