function sample = eg1_box_sample(lx,ly,lz)
%author: Jose A. Rodriguez-Rivera
%jose.rodriguez@nist.gov
%joarodri@gmail.com
%%University of Maryland
%NIST Center for Neutron Research
%Define a box samle with lx,ly and lz dimentions in mm
%IMPORTANT:
%Boundaries are defined as
%F= Ax^2 + By^2 + Cz^2+ Dxy + Eyz + Gzx +Hx +Iy +Jz = fu(x,y,z)
%The sample must be located at (0,0,0). There is not need to be centered
%The sample must be defined as a set of convex boundaries.
%inside value is a volume element inside the sample.

inside_val=[0,0,0.1];

    F=zeros(6,11);
    %Plane 1
    %plane x=lx/2  ->  H=1  F=lx/2  K=1
    F(1,7)=1.0;      %H=1.0
    F(1,10)=lx/2;  	%F=lx/2
    %Plane 2
    %plane x=-lx /2 ->  H=1  F=-lx  K=0
    F(2,7)=1.0;       %H=1.0
    F(2,10)=-1.0*lx/2;      %F=-lx/2
    %Plane 3
    %plane y=ly  ->  I=1  F=ly/2  K=1
    F(3,8)=1.0;       %I=1.0
    F(3,10)=ly/2;      %F=ly/2
    %Plane 4
    %plane y=-ly/2  ->  I=1  F=-ly/2  K=0
    F(4,8)=1.0;       %I=1.0
    F(4,10)=-1.0*ly/2; %F=-ly/2
    %Plane 5
    %plane z=lz/2 ->  J=1, F=lz/2
    F(5,9)=1.0;      %J=1.0
    F(5,10)=lz/2;     %F=lz/2
    %Plane 6
    %plane z=-lz/2 ->  J=1, F=-lz/2
    F(6,9)=1.0;        %J=1.0
    F(6,10)=-1.0*lz/2;  %F=-lz/2

sample.F=F;             %Boundary functions
sample.VEI=[0,0,0.001];  %VEI= define volume element inside
sample.box_bottom=-1*[lx/2,ly/2,lz/2];  %box lower corner
sample.box_dimensions=[lx,ly,lz];  %box dimensions
sample.box_deltas=[20,20,20];         %box number volumeo elements in each direction
end