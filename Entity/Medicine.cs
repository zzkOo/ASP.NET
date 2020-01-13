using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class Medicine
    {
        private int medId;
        private string medName;
        private decimal medPrice;
        private int medCount;

        public Medicine(int medId, string medName, decimal medPrice, int medCount)
        {
            this.medId = medId;
            this.medName = medName;
            this.medPrice = medPrice;
            this.medCount = medCount;
        }

        public int MedId { get => medId; set => medId = value; }
        public string MedName { get => medName; set => medName = value; }
        public decimal MedPrice { get => medPrice; set => medPrice = value; }
        public int MedCount { get => medCount; set => medCount = value; }
    }
}
