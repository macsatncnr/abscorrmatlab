function sample = eg6_prism_sample_equ()

%author: Jose A. Rodriguez-Rivera
%jose.rodriguez@nist.gov
%joarodri@gmail.com
%%University of Maryland
%NIST Center for Neutron Research


%IMPORTANT:
%Boundaries are defined as
%F= Ax^2 + By^2 + Cz^2+ Dxy + Eyz + Gzx +Hx +Iy +Jz = fu(x,y,z)
%The boundaries for the prism consist on three rectangles and two
%triangles. 5 planes as boundary functins  1.732x+y=2.598,-1.732+y=2.598, y=0,z=2,z=-2
%The sample must be defined as a set of convex boundaries.
%inside value is a volume element inside the sample.

%Prism x+y=1 -x+y=1, y=0, z=2, z=-2

    F=zeros(5,11);
    %Plane 1
    %plane z=2
    F(1,9)=1.0;         %J=1
    F(1,10)=2.0;  	    %F=2
    %Plane 2
    %plane z=-2
    F(2,9)=1.0;         %J=1
    F(2,10)=-2.0;       %F=-2
    %Plane 3
    %plane y=0 
    F(3,8)=1.0;         %I=1.0
    F(3,10)=0;          %F=0
    %Plane 4
    %plane 1.732x+y=2.598
    F(4,7)=1.732;         %H=1.732
    F(4,8)=1.0;         %I=1.0
    F(4,10)=2.598;        %F=2.598
    %Plane 5
    %plane -1.732x+y=2.598
    F(5,7)=-1.732;        %H=-1.732
    F(5,8)=1.0;         %I=1.0
    F(5,10)=2.598;        %F=2.598
   

sample.F=F;             %Boundary functions
sample.VEI=[0,0.5,0];  %VEI= define volume element inside
sample.box_bottom=[-1.5,0,-2];  %box lower corner
sample.box_dimensions=[3,2.6,4];  %box dimensions
sample.box_deltas=[50,50,50];         %box number volumeo elements in each direction
end