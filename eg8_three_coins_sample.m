
%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

%Three coins samples defined in cylinder samples. r=5 h=1.5


function all_samples = eg8_three_coins_sample()
    
    all_samples(1) = trm_smpl_trans(eg_cylinder_sample(5.0,1.5),[0,0,2]);
    all_samples(2) = trm_smpl_trans(eg_cylinder_sample(5.0,1.5),[0,6,-2]);
    all_samples(3) = trm_smpl_trans(eg_cylinder_sample(5.0,1.5),[0,-6,-2]);
    
end