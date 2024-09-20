function srot = trm_srotzx(s,alpha)

%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

%﻿rotate the s vector around z-x plane alpha degrees
    alpharad=deg2rad(alpha);
    ssx=s(1)*cos(alpharad)+s(3)*sin(alpharad);
    ssz=-1*s(1)*sin(alpharad)+s(3)*cos(alpharad);
    srot=[ssx,s(2),ssz];
end

