﻿using System;
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
    public class DonHangController : Controller
    {
        DataClasses2DataContext db = new DataClasses2DataContext();
        // GET: Admin/DonHang
        public ActionResult Index(int? page)
        {
            int iSize = 6;
            // Tạo biến số trang
            int iPagenum = (page ?? 1);
            return View(db.ThanhToans.ToList().OrderBy(n => n.Payment_ID).ToPagedList(iPagenum, iSize));
        }
        public ActionResult Details(string id)
        {
            var ddh = db.ThanhToans.SingleOrDefault(n => n.Payment_ID == id);
            if (ddh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(ddh);
        }
        public ActionResult Delete(string id)
        {
            var ddh = db.ThanhToans.SingleOrDefault(n => n.Payment_ID == id);
            if (ddh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(ddh);
        }
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirm(string id, FormCollection f)
        {
            var ddh = db.ThanhToans.SingleOrDefault(n => n.Payment_ID == id);
            if (ddh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            var ctdh = db.OrderDetails.Where(ct => ct.Game_ID == id);
            if (ctdh.Count() > 0)
            {
                //Nội dung sẽ hiển thị khi sách cần xóa đã có trong table ChiTietDonHang
                ViewBag.ThongBao = "Sản phẩm này đang có trong bảng Chi tiết đặt hàng <br>" +
                " Nếu muốn xóa thì phải xóa hết mã sản phẩm này trong bảng Chi tiết đặt hàng";
                return RedirectToAction("Index", "Laptop");
            }

            db.ThanhToans.DeleteOnSubmit(ddh);
            db.SubmitChanges();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(string id)
        {
            var ddh = db.ThanhToans.SingleOrDefault(n => n.Payment_ID == id);
            if (ddh == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(ddh);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(FormCollection f)
        {
            if (ModelState.IsValid)
            {
                var ddh = db.ThanhToans.Where(n => n.Payment_ID == Request.Form["Payment_ID"]).SingleOrDefault();
                ddh.CustID = f["MaKH"];
                db.SubmitChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return RedirectToAction("Edit");
            }
        }
    }
}