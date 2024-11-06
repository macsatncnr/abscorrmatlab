%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

%   Three samples: One Cube 2x2x2, One sphere r=1 and one cylinder r=1
%   h=1.5

function all_samples = eg9_multiple_samples()
    all_samples(2) = trm_smpl_trans(eg1_box_sample(1,1,1),[1,1,1]);
    all_samples(1) = trm_smpl_trans(eg2_sphere_sample(1),[-1,-1,-1]);
    all_samples(3) = trm_smpl_trans(eg3_cylinder_sample(1,1.5),[-1.5,1.5,0]);
    %all_samples(1) = trm_smpl_trans(eg5_half_cylinder_sample(1.5,1.5),[-2,2,0]);
    
    
end