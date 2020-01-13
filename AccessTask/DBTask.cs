using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entity;

namespace HospitalManagement.AccessTask
{
    public static class DBTask
    {
        static HospitalManageDataContext db;

        public static bool isUser(int id, ref User user)
        {
            db = new HospitalManageDataContext();
            HospitalDT hos = (from h in db.HospitalDT
                              where h.hosId == id select h).FirstOrDefault();
            if (hos == null) return false;
            user = new User(hos.hosId, hos.hosName, hos.hosRoom);
            return true;
        }

        public static void addPatient(ref Patient patient)
        {
            db = new HospitalManageDataContext();
            PatientDT p = new PatientDT();
            p.patId = patient.PatId;
            p.patName = patient.PatName;
            p.patAge = patient.PatAge;
            p.patSex = patient.PatSex;
            p.patPlace = patient.PatPlace;
            p.notPaid = patient.NotPaid;
            db.PatientDT.InsertOnSubmit(p);
            db.SubmitChanges();
        }
        public static List<PatientDT> showPatDT()
        {
            db = new HospitalManageDataContext();
            var results = from r in db.PatientDT select r;
            return results.ToList();
        }

        public static bool addPatDoctor(string patId, int docId)
        {
            db = new HospitalManageDataContext();
            var pat = from r in db.PatientDT where r.patId == patId select r;
            if (pat != null)
            {
                foreach (PatientDT p in pat)
                    p.patDocId = docId;
                db.SubmitChanges();
                return true;
            }
            return false;
        }

        public static decimal getMedPrice(string name)
        {
            db = new HospitalManageDataContext();
            var med = from m in db.MedicineDT where m.medName == name select m;
            if (med != null)
            {
                foreach (MedicineDT m in med)
                    return m.medPrice;
            }
            return 0.00M;
        }

        public static void reduceMedNum(string name, int num)
        {
            db = new HospitalManageDataContext();
            var med = from m in db.MedicineDT where m.medName == name select m;
            if (med != null)
            {
                foreach (MedicineDT m in med)
                    m.medCount -= num;
                db.SubmitChanges();
            }
        }
        public static List<MedicineDT> showMedDT()
        {
            db = new HospitalManageDataContext();
            var results = from r in db.MedicineDT select r;
            return results.ToList();
        }
        public static void addMedNum(string name, int num)
        {
            db = new HospitalManageDataContext();
            var med = from m in db.MedicineDT where m.medName == name select m;
            if (med != null)
            {
                foreach (MedicineDT m in med)
                    m.medCount += num;
                db.SubmitChanges();
            }
        }

        public static List<HospitalDT> showHosDT()
        {
            db = new HospitalManageDataContext();
            var results = from r in db.HospitalDT select r;
            return results.ToList();
        }
    }
}
