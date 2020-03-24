using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace TestProjectOne
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestMethod1()
        {
            int a = 5;
            int b = 5;
            Assert.AreEqual(a, b);
        }

        public void TestMethod2()
        {
            int a = 5;
            int b = 5;
            Assert.AreEqual(a, b);
        }

         public void TestMethod3()
        {
                int a = 5;
                int b = 5;
                Assert.AreEqual(a, b);
        }

         public void TestMethod4()
         {
                int a = 5;
                int b = 5;
                Assert.AreEqual(a, b);
         }
        }
    }
}
