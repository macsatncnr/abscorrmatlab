function sample = eg2_sphere_sample(r)
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

%IMPORTANT:
%Boundaries are defined as
%F= Ax^2 + By^2 + Cz^2+ Dxy + Eyz + Gzx +Hx +Iy +Jz = fu(x,y,z)

% Sphere with radious r
% x^2+y^2+z^2=r^2  A=1, B=1, C=1 F=r^2
% inside value is a the volume element inside the sample.


F=zeros(1,11);
    %Plane 1
    %plane x=lx/2  ->  H=1  F=lx/2  K=1
F(1,1)=1.0;     %A=1
F(1,2)=1.0;     %B=1
F(1,3)=1.0;     %C=1
F(1,10)=r^2;  	%F=r^2

sample.F=F;             %Boundary functions
sample.VEI=[0,0,0.001];  %VEI= define volume element inside
sample.box_bottom=-1*[r,r,r];  %box lower corner
sample.box_dimensions=[2*r,2*r,2*r];  %box dimensions
sample.box_deltas=[55,55,55];         %box number volumeo elements in each direction
end

