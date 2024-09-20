function sample = eg3_cylinder_sample(r,l)
%author: Jose A. Rodriguez-Rivera
%jose.rodriguez@nist.gov
%joarodri@gmail.com
%%University of Maryland
%NIST Center for Neutron Research

%IMPORTANT:
%Boundaries are defined as
%F= Ax^2 + By^2 + Cz^2+ Dxy + Eyz + Gzx +Hx +Iy +Jz = fu(x,y,z)
%The sample must be located at (0,0,0). There is not need to be centered
%The sample must be defined as a set of convex boundaries.
%Cylinder radious r, height l
% x^2+y^2=r^2  A=1 B=1 F=r^2
% z=l/2   J=1  F=1/2
% z=-l/2  J=2  F=-l/2
%
%inside value is a defined volume element inside the volume of interest.
    F=zeros(3,11);
    %Circle
    %Circle x^2+y^2=r^2  A=1 B=1 F=r^2 
    F(1,1)=1.0;      %A=1.0
    F(1,2)=1.0;     %B=1.0
    F(1,10)=r^2;  	%F=r^2

    %Plane 1
    %plane z=l/2 ->  J=1, F=l/2
    F(2,9)=1.0;      %J=1.0
    F(2,10)=l/2;     %F=l/2
    %Plane 6
    %plane z=-l/2 ->  J=1, F=-l/2
    F(3,9)=1.0;        %J=1.0
    F(3,10)=-1.0*l/2;  %F=-l/2

sample.F=F;             %Boundary functions
sample.VEI=[0,0,0.001];  %VEI= define volume element inside
sample.box_bottom=-1*[r,r,l/2];  %box lower corner
sample.box_dimensions=[2*r,2*r,l];  %box dimensions
sample.box_deltas=[55,55,55];         %box number volumeo elements in each direction
end