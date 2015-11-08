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

import math
import numpy as np


class MITBagParameters:

    def __init__(self,bag_constant, epsilon_from, epsilon_to, total_points):

        self.bag_constant = bag_constant
        self.epsilon_from = epsilon_from
        self.epsilon_to = epsilon_to
        self.total_points = total_points

class MITBagEquations:
    """ MIT Bag equations. """

    def __init__(self, parameters):
        
        self.__parameters = parameters
        
    def pressure(self, epsilon):
        """ P = (1/3) * (Epsilon - 4B)"""
        return (0.33333) * (epsilon - 4. * self.__parameters.bag_constant)

    def baryonic_density(self, epsilon, pressure):
        return 1

    def run(self):
        
        epsilon_bin = np.linspace(self.__parameters.epsilon_to, self.__parameters.epsilon_from, self.__parameters.total_points)
        
        print("# epsilon [MeV/fm^3], pressure [MeV/fm^3], baryonic_density [1/fm^3]")
        
        for epsilon in epsilon_bin:
            pressure = self.pressure(epsilon)
            baryonic_density = self.baryonic_density(epsilon, pressure)
            print("{}, {}, {}".format(epsilon, pressure, baryonic_density))
        
        
        
        
        
        
