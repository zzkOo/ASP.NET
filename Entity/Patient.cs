using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Patient
    {
        private string patId;
        private string patName;
        private int patAge;
        private string patSex;
        private string patPlace;
        private decimal notPaid;
        private int patDocId;

        public Patient(string patId, string patName, int patAge, 
            string patSex, string patPlace, decimal notPaid)
        {
            this.patId = patId;
            this.patName = patName;
            this.patAge = patAge;
            this.patSex = patSex;
            this.patPlace = patPlace;
            this.notPaid = notPaid;
        }
        public Patient(int patDocId)
        {
            this.patDocId = patDocId;
        }

        public string PatId { get => patId; set => patId = value; }
        public string PatName { get => patName; set => patName = value; }
        public int PatAge { get => patAge; set => patAge = value; }
        public decimal NotPaid { get => notPaid; set => notPaid = value; }
        public string PatPlace { get => patPlace; set => patPlace = value; }
        public string PatSex { get => patSex; set => patSex = value; }
        public int PatDocId { get => patDocId; set => patDocId = value; }
    }
}
