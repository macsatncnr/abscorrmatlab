
%absorption for mr=2.5

%   @author: Jose A. Rodriguez-Rivera
%   jose.rodriguez@nist.gov
%   joarodri@gmail.com
%   University of Maryland
%   NIST Center for Neutron Research

theta=[0,5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90];
transm=1./[23.791,23.280,21.907,20.040,18.041,16.142,14.445,12.982,11.738,10.690,9.810,9.074,8.462,7.957,7.548,7.229,6.996,6.853,6.803];
plot(theta,transm);