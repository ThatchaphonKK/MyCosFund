using MyCosFund.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MyCosFund.Controllers
{
    public class HomeController : Controller
    {
        mycos_fundEntities fundDB = new mycos_fundEntities();

        public ActionResult Index()
        {
            List<employee> listEmployee = new List<employee>();
            listEmployee = fundDB.employees.ToList();

            List<ProvidenceFundModels> result = new List<ProvidenceFundModels>();
            foreach (var employee in listEmployee)
            {
                decimal totalProvidenceFund = 0;
                ProvidenceFundModels providenceFund = new ProvidenceFundModels();
                providenceFund.Employee = employee;

                List<emp_salary_statement> listEmpSalaryStatement = fundDB.emp_salary_statement.Where(r=>r.empid == employee.id).ToList(); ;
                foreach (var empSalaryStatement in listEmpSalaryStatement)
                {
                    int totalWorkMonth = 12;
                    if (empSalaryStatement.years == employee.start_work_date.Year)
                    {
                        //if work first year
                        int totalMonthNotCalculate = 3;
                        totalWorkMonth = ((12 - employee.start_work_date.Month) - totalMonthNotCalculate) + 1;
                    }else if (empSalaryStatement.years == DateTime.Now.Year)
                    {
                        //if current year totalmonth to previous month                        
                        totalWorkMonth = DateTime.Now.Month - 1;
                    }

                    totalProvidenceFund += GetTotalProvidenFund(totalWorkMonth, empSalaryStatement.salary ?? 0, empSalaryStatement.pvd_fund_rate ?? 0);
                }

                providenceFund.TotalProvidenceFund = totalProvidenceFund;
                result.Add(providenceFund);
            }

            return View(result);
        }

        public ActionResult _EmployeeSalaryDetailModalPartial(int? employeeId)
        {
            List<emp_salary_statement>  listEmpSalaryStatement = fundDB.emp_salary_statement.Where(r => r.empid == employeeId).ToList();

            employee employee = fundDB.employees.Where(r => r.id == employeeId).FirstOrDefault();

            List<EmpSalaryStatementModel> result = new List<EmpSalaryStatementModel>();
            foreach (var item in listEmpSalaryStatement)
            {
                EmpSalaryStatementModel empSalaryStatement = new EmpSalaryStatementModel();
                empSalaryStatement.EmpSalaryStatement = item;

                int totalWorkMonth = 12;
                if (item.years == employee.start_work_date.Year)
                {
                    //if work first year
                    int totalMonthNotCalculate = 3;
                    totalWorkMonth = ((12 - employee.start_work_date.Month) - totalMonthNotCalculate) + 1;
                }
                else if (item.years == DateTime.Now.Year)
                {
                    //if current year totalmonth to previous month                        
                    totalWorkMonth = DateTime.Now.Month - 1;
                }

                empSalaryStatement.TotalProvidenceFund = GetTotalProvidenFund(totalWorkMonth, item.salary ?? 0, item.pvd_fund_rate ?? 0);
                result.Add(empSalaryStatement);
            }

            ViewBag.Employee = employee;
            return PartialView(result);
        }

        public decimal GetTotalProvidenFund(int totalWorkMonth, decimal salary, decimal pvdFundRate)
        {          
            decimal result = 0;
            if (totalWorkMonth > 0)
            {
                decimal companyRate = 0;
                decimal totalWorkYear = totalWorkMonth / 12;
                if (totalWorkMonth < 3)
                {
                    companyRate = 0;
                }
                else if (totalWorkYear < 1)
                {
                    companyRate = 10;
                }
                else if (totalWorkYear < 3)
                {
                    companyRate = 30;
                }
                else if (totalWorkYear < 5)
                {
                    companyRate = 50;
                }
                else
                {
                    companyRate = 80;
                }

                result = ((salary * (companyRate / 100)) * totalWorkMonth) + ((salary * (pvdFundRate / 100)) * totalWorkMonth);
            }
          
            return result;
        }
    }
}