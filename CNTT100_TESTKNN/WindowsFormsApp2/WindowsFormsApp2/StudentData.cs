﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp2
{
    public class StudentData
    {
        public string MaCN { get; set; } 
        public string MaSV { get; set; } 
        public double[] Scores { get; internal set; }
    }
}
