function srot = trm_srotxy(s,alpha)

%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

%﻿rotate the s vector around x-y plane alpha degrees
    alpharad=deg2rad(alpha);
    ssx=s(1)*cos(alpharad)-s(2)*sin(alpharad);
    ssy=s(1)*sin(alpharad)+s(2)*cos(alpharad);
    srot=[ssx,ssy,s(3)];
end
