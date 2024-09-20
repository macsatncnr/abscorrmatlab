

function sample_trans=trm_smpl_trans(smpl,new_center)

%   Created on August 10 2024
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

% apply transformations to translate the sample and volume element
% New_center is at x0,y0,z0 position
% sample F= Ax^2 + By^2 + Cz^2+ Dxy + Eyz + Gzx +Hx +Iy +Jz = fu(x,y,z)
% A=smpl(1,1), B=smpl(1,2), C=smpl(1,3), D=smpl(1,4), E=smpl(1,5)
% G=smpl(1,6), H=smpl(1,7), I=smpl(1,8), J=smpl(1,9), F=smpl(1,10)
% H_new=H+2Ax0-Dy0-Gz0
% I_new=I+2By0-Dx0-Ez0
% J_new=J+2*Cz0-Ey0-Gx0
% F_new=F-(Ax0^2+By0^2+Cz0^2+Dx0y0+Ez0y0+Gz0x0-Hx0-Iy0-Jz0)

    x0=new_center(1);
    y0=new_center(2);
    z0=new_center(3);
    sample_trans=smpl;
    size_F=size(smpl.F);
    for nn=1:size_F(1)
        A=smpl.F(nn,1); B=smpl.F(nn,2); C=smpl.F(nn,3); D=smpl.F(nn,4); E=smpl.F(nn,5);
        G=smpl.F(nn,6); H=smpl.F(nn,7); I=smpl.F(nn,8); J=smpl.F(nn,9); F=smpl.F(nn,10);
        sample_trans.F(nn,7) = H - 2*A*x0 - D*y0 - G*z0;
        sample_trans.F(nn,8) = I - 2*B*y0 - D*x0 - E*z0;
        sample_trans.F(nn,9) = J - 2*C*z0 - E*y0 - G*x0;
        sample_trans.F(nn,10) = F - (A*x0^2 + B*y0^2 + C*z0^2 + D*x0*y0 + ...
                               E*z0*y0 + G*z0*x0 - H*x0 - I*y0 - J*z0);
    end   

   sample_trans.VEI = smpl.VEI + new_center;
   sample_trans.box_bottom = smpl.box_bottom + new_center;
end