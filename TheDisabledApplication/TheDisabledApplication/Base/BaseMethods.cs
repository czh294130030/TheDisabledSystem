using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace TheDisabledApplication.Base
{
    public class BaseMethods
    {
        /// <summary>
        /// 添加日志文件
        /// </summary>
        /// <param name="message">输出信息</param>
        /// <param name="controller">控制器名</param>
        public static void WriteLog(string message, string method)
        {
            string directoryPath = System.AppDomain.CurrentDomain.BaseDirectory + "\\logs";
            method = method + ".log";
            string path = directoryPath + "\\" + method;
            if (!Directory.Exists(directoryPath))
            {
                Directory.CreateDirectory(directoryPath);
            }
            StreamWriter sw = new StreamWriter(path, true);
            sw.WriteLine("{0} {1}", System.DateTime.Now, message);
            sw.Close();
        }
    }
}