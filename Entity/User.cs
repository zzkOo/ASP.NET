using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entity
{
    public class User
    {
        private int hosId;
        private string hosName;
        private string hosRoom;

        public User(int hosId, string hosName, string hosRoom)
        {
            this.hosId = hosId;
            this.hosName = hosName;
            this.hosRoom = hosRoom;
        }

        public int HosId { get => hosId; set => hosId = value; }
        public string HosName { get => hosName; set => hosName = value; }
        public string HosRoom { get => hosRoom; set => hosRoom = value; }
    }
}
