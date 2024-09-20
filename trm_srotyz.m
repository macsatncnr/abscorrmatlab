function srot = trm_srotyz(s,alpha)

%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

%﻿rotate the s vector around y-z plane alpha degrees
    alpharad=deg2rad(alpha);
    ssy=s(2)*cos(alpharad)-s(3)*sin(alpharad);
    ssz=s(2)*sin(alpharad)+s(3)*cos(alpharad);
    srot=[s(1),ssy,ssz];
end

