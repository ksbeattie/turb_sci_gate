﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Turbine.Consumer
{
    public class InvalidStateChangeException : Exception
    {
        public InvalidStateChangeException(string msg) : 
            base(msg)
        {
        }
    }
}
