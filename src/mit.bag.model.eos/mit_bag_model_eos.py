#!/usr/bin/python

# mit_bag_model_eos - MIT Bag Model EoS
# Copyright (C) 2015 Rodrigo Souza <rsouza01@gmail.com>

# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
# 02110-1301, USA.


"""
    mit_bag_model_eos.py - Generates the EoS table.

    History:
    Version 0.1: 2015/11/08     (rsouza) - Creating the file.

    Usage:
        mit_bag_model_eos.py

    Example:
        ./mit_bag_model_eos.py

"""

import sys
import scipy.integrate as integrate
import numpy as np
import mit_bag_model_equations as mbm


def main(argv):
    
    print("mit_bag_model_eos")

    parameters = mbm.MITBagParameters(
        bag_constant=57, 
        epsilon_from=200, 
        epsilon_to=1000, 
        total_points=100)
    
    mit_bag = mbm.MITBagEquations(parameters)
    mit_bag.run()
    
    
    

if __name__ == "__main__":
    main(sys.argv[1:])
