using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyCosFund.Models
{
    public class ProvidenceFundModels
    {
        public employee Employee { get; set; }

        public decimal? TotalProvidenceFund { get; set; }
    }

    public class EmpSalaryStatementModel
    {
        public emp_salary_statement EmpSalaryStatement { get; set; }
        public decimal? TotalProvidenceFund { get; set; }
    }
}