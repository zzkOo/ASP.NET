using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;
using HospitalManagement.AccessTask;


namespace HospitalManagement.InterService
{
    public static class LInterService
    {
        public static User user;
        public static Patient patient;
        public static Medicine medicine;
        public static string[] order = new string[6]; 

        public static bool isUser(string id)
        {
            int i;
            try
            {
                i = int.Parse(id);
            }
            catch(Exception)
            {
                return false;
            }
            if (!DBTask.isUser(i, ref user)) return false;
            return true;
        }
        
        public static void addPatient(Patient p)
        {
            patient = p;
            DBTask.addPatient(ref patient);
        }
        public static List<PatientDT> showPatDT()
        {
            return DBTask.showPatDT();
        }

        public static bool addPatDoctor(string patId, int patDocId)
        {
            patient.PatDocId = patDocId;
            return DBTask.addPatDoctor(patId, patDocId);
        }

        public static decimal getMedPrice(string medName)
        {
            return DBTask.getMedPrice(medName);
        }

        public static void reduceMedNum(string medName, int medNum)
        {
            DBTask.reduceMedNum(medName, medNum);
        }
        public static List<MedicineDT> showMedDT()
        {
            return DBTask.showMedDT();
        }
        public static void addMedNum(string medName, int medNum)
        {
            DBTask.addMedNum(medName, medNum);
        }

        public static List<HospitalDT> showHosDT()
        {
            return DBTask.showHosDT();
        }
    }
}
