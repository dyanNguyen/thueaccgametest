using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Laptopp.Models;
using PagedList;
using PagedList.Mvc;
using System.IO;

namespace Laptopp.Areas.Admin.Controllers
{
    public class KhachHangController : Controller
    {
        DataClasses2DataContext db = new DataClasses2DataContext();

        // GET: Admin/KhachHang
        public ActionResult Index(int? page)
        {
            int iSize = 20;
            // Tạo biến số trang
            int iPagenum = (page ?? 1);

            return View(db.NguoiDungs.ToList().OrderBy(n => n.CustID).ToPagedList(iPagenum, iSize));
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(NguoiDung model)
        {
            if (ModelState.IsValid)
            {
                var kh = new NguoiDung();
                kh.CustID = model.CustID;
                kh.UserName = model.UserName;
                kh.Password = model.Password;
                kh.Email = model.Email;
                kh.Address = model.Address;
                kh.Phone = model.Phone;
                db.NguoiDungs.InsertOnSubmit(kh);
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return RedirectToAction("Create");
            }
        }

        [HttpGet]
        public ActionResult Edit(string id)
        {
            var kh = db.NguoiDungs.SingleOrDefault(n => n.CustID == id);
            if (kh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(kh);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(FormCollection f)
        {
            if (ModelState.IsValid)
            {
                var kh = db.NguoiDungs.Where(n => n.CustID == Request.Form["CustID"]).SingleOrDefault();
                kh.CustID = f["CustID"];
                kh.UserName = f["UserName"];
                kh.Password = f["Password"];
                kh.Email = f["Email"];
                kh.Address = f["Address"];
                kh.Phone = f["Phone"];
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return RedirectToAction("Edit");
            }
        }
        [HttpGet]
        public ActionResult Delete(string id)
        {
            var kh = db.NguoiDungs.SingleOrDefault(n => n.CustID == id);
            if (kh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(kh);
        }
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirm(string id, FormCollection f)
        {
            var kh = db.NguoiDungs.SingleOrDefault(n => n.CustID == id);
            if (kh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            var ddh = db.ThanhToans.Where(n => n.Payment_ID == id);
            if (ddh.Count() > 0)
            {
                ViewBag.ThongBao = "Khách hàng này đã có đơn hàng trong cửa hàng <br>" +
                " Nếu muốn xóa thì phải xóa hết đơn hàng này trong bảng đơn hàng";

                return RedirectToAction("Index", "DonHang");
            }

            db.NguoiDungs.DeleteOnSubmit(kh);
            db.SubmitChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Details(string id)
        {
            var kh = db.NguoiDungs.SingleOrDefault(n => n.CustID == id);
            if (kh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(kh);
        }
    }
}