function [t1,t2] = trm_tdis(fu,s,dd)

%   Created on March 13 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% This procedure returns [t1,t2] distances using the s vector direction
% at the dd(x,y,z) volume element positions for the Fu defined boundary
% function F= Ax^2 + By^2 + Cz^2+ Dxy + Eyz + Gzx +Hx +Iy +Jz.
    t1=15.0e20;
    t2=15.0e20;
    % Defining the boundary function
    A=fu(1);
    B=fu(2);
    C=fu(3);
    D=fu(4);
    E=fu(5);
    G=fu(6);
    H=fu(7);
    I=fu(8);
    J=fu(9);
    F=fu(10);
    % Defining the vector direction S
    sx=s(1);
    sy=s(2);
    sz=s(3);
    % Defining the volume elemet dd
    xp=dd(1);
    yq=dd(2);
    zr=dd(3);
    % Calculate U, V and W
    U = A*sx^2 + B*sy^2 +C*sz^2 + D*sx*sy + E*sy*sz + G*sz*sx;
    V = (2*(A*xp*sx + B*yq*sy + C*zr*sz) + D*(xp*sy+yq*sx) + E*(yq*sz +zr*sy) + G*(zr*sx +xp*sz) + H*sx + I*sy + J*sz);
    W = A*xp^2 + B*yq^2 +C*zr^2 + D*xp*yq + E*yq*zr + G*zr*xp +H*xp + I*yq + J*zr -F;
    if U ~= 0.0
        zz= V^2-4*U*W;
        if zz >= 0.0
            t1= (-1*V + sqrt(zz))/(2*U);
            t2= (-1*V - sqrt(zz))/(2*U);
        else
            t1=1.5e20;
            t2=1.5e20;
        end    
    else
        if V == 0
            t1=1.5E20;
        else
            t1= -1*W/V;
            t2= 1.5e20;
        end 
    end    
end

