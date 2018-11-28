using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DA;

namespace BL
{
    public class BL_signup : DataAccess
    {
        public string Fname;
        public string Lname;
        public string Dname;
        public string MeliCode;
        public string Email;
        public string mobile;
        public string phone;
        public string Adres;
        public string pass;
        public int StatusShow;

        public void Add_User()
        {
            base.Link();
            string Query = "INSERT INTO Tb_User (Fname, Lname, Dname, MeliCode, Email, mobile, phone, Adres, pass, StatusShow) VALUES ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', {9})";
            Query = string.Format(Query, Fname, Lname, Dname, MeliCode, Email, mobile, phone, Adres, pass, StatusShow);
            base.CommandDataText(Query);
            base.UnLink();
        }
    }
}
