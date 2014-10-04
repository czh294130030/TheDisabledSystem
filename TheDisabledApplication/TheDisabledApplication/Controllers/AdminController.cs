using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using TheDisabledApplication.Base;
using TheDisabledApplication.Models;

namespace TheDisabledApplication.Controllers
{
    public class AdminController : ApiController
    {
        /// <summary>
        /// 根据条件获取管理员信息
        /// GET /api/Admin/GetAdmins?username=&typeId=2
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="typeId">管理员类型编号</param>
        /// <returns>返回管理员列表</returns>
        [HttpGet]
        public List<d_admin> GetAdmins(string username, int typeId)
        {
            List<d_admin> list = new List<d_admin>();
            try
            {
                using (TheDisabledClassesDataContext dc = new TheDisabledClassesDataContext())
                {
                    IQueryable<d_admin> query = dc.d_admin.Where(u => u.typeId.Equals(typeId));
                    if (username != null)
                    {
                        query = query.Where(u => u.username.Contains(username));
                    }
                    list = query.ToList();
                }
            }
            catch (Exception ex)
            {
                BaseMethods.WriteLog(ex.ToString(), "AdminController.GetAdmins");
            }
            return list;
        }
        /// <summary>
        /// 根据id获取管理员
        /// GET /api/Admin/GetAdminById/{id}
        /// </summary>
        /// <param name="id">管理员编号</param>
        /// <returns>返回管理员信息</returns>
        [HttpGet]
        public d_admin GetAdminById(int id)
        {
            d_admin item = new d_admin();
            try
            {
                using (TheDisabledClassesDataContext dc = new TheDisabledClassesDataContext())
                {
                    item = dc.d_admin.SingleOrDefault(u => u.id.Equals(id));
                }
            }
            catch (Exception ex)
            {
                BaseMethods.WriteLog(ex.ToString(), "AdminController.GetAdminById");
            }
            return item;
        }
        /// <summary>
        /// 根据用户名密码获取管理员
        /// GET /api/Admin/GetAdmin?username=chad&password=123456
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="password">密码</param>
        /// <returns>返回管理员信息</returns>
        [HttpGet]
        public d_admin GetAdmin(string username, string password)
        {
            d_admin item = new d_admin();
            try
            {
                using (TheDisabledClassesDataContext dc = new TheDisabledClassesDataContext())
                {
                    item = dc.d_admin.SingleOrDefault(u => u.username.Equals(username) && u.password.Equals(password));
                }
            }
            catch (Exception ex)
            {
                BaseMethods.WriteLog(ex.ToString(), "AdminController.GetAdmin");
            }
            return item;
        }
        /// <summary>
        /// 添加管理员信息
        /// POST /api/Admin/AddAdmin
        /// {username:'lance',password:'123456',typeId:2}
        /// </summary>
        /// <param name="item">管理员信息</param>
        /// <returns>添加陈功后返回新的管理员信息，添加失败返回null</returns>
        [HttpPost]
        public d_admin AddAdmin(d_admin item)
        {
            try
            {
                using (TheDisabledClassesDataContext dc = new TheDisabledClassesDataContext())
                {
                    dc.d_admin.InsertOnSubmit(item);
                    dc.SubmitChanges();
                    return item;
                }
            }
            catch (Exception ex)
            {
                BaseMethods.WriteLog(ex.ToString(), "AdminController.AddAdmin");
                return null;
            }
        }
        /// <summary>
        /// 更新管理员信息
        /// PUT /api/Admin/UpdateAdmin/{id}
        /// {username:'lulu',password:'12345',typeId:1}
        /// </summary>
        /// <param name="id">管理员编号</param>
        /// <param name="item">管理员新信息</param>
        /// <returns>更新成功返回修改后的管理员信息，管理员不存在或者更新失败返回null</returns>
        [HttpPut]
        public d_admin UpdateAdmin(int id, d_admin item)
        {
            try
            {
                using (TheDisabledClassesDataContext dc = new TheDisabledClassesDataContext())
                {
                    d_admin newItem = dc.d_admin.SingleOrDefault(u => u.id.Equals(id));
                    if (newItem != null)
                    {
                        newItem.username = item.username;
                        newItem.password = item.password;
                        newItem.typeId = item.typeId;
                        dc.SubmitChanges();
                        return newItem;
                    }
                    else
                    {
                        return null;
                    }
                }
            }
            catch (Exception ex)
            {
                BaseMethods.WriteLog(ex.ToString(), "AdminController.UpdateAdmin");
                return null;
            }
        }
        /// <summary>
        /// 根据id删除管理员信息
        /// DELETE /api/Admin/DeleteAdmin/{id}
        /// </summary>
        /// <param name="id">管理员编号</param>
        /// <returns>如果删除成功返回true, 管理员不存在或者删除失败返回false</returns>
        [HttpDelete]
        public bool DeleteAdmin(int id)
        {
            try
            {
                using (TheDisabledClassesDataContext dc = new TheDisabledClassesDataContext())
                {
                    d_admin item = dc.d_admin.SingleOrDefault(u => u.id.Equals(id));
                    if (item != null)
                    {
                        dc.d_admin.DeleteOnSubmit(item);
                        dc.SubmitChanges();
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
            }
            catch (Exception ex)
            {
                BaseMethods.WriteLog(ex.ToString(), "AdminController.DeleteAdmin");
                return false;
            }
        }
    }
}
