# abscorr_matlab
Matlab routines to calculate the neutron and xray transmission for arbitrry shape samples:

By 	Jose. A Rodriguez-Rivera
     	University of Maryland
	NIST Center for Neutron Research
	joarodri@nist.gov
	jrodrig9@umd.edu

If you use these routines please cite the paper "Neutron absorption correction and mean path length calculations formultiple samples with arbitrary shapes: application to highly absorbing samples on the Multi-Axis Crystal Spectrometer at NIST" by Rodriguez-Rivera, J.A. and Stock, C., J Appl Cryst 58, (2025).

You can find a colab webpage where you can run the python version here: https://sites.google.com/view/abscorr/home

The program calculates the neutron and x-ray transmission corrections for arbitrary shape samples. It is a generalized version of the Wuensch and Prewitt algorithm. This new version supports complex shapes, closed geometries like spheroids intersected by several surfaces and arrays of multiple samples. 


The sample boundaries  must be defined as quadratic surfaces of the form 

F= Ax^2 + By^2 + Cz^2+ Dxy + Eyz + Gzx +Hx +Iy +Jz.

Eg.  A cyiinder with a radius r and length l can be defined with three surfaces:

x^2+y^2=r^2  		A=1 B=1 F=r^2
 z=l/2   			J=1  F=1/2
z=-l/2  			J=2  F=-l/2


Program files:
trm_todis.m
trm_tdis.m
tmr_srotzx.m
trm_srotyz.m
trm_srotxy.m
trm_smpltrans.m
trm_is_inside.m
trm_integ.m
trm_get_t_to_distances.m
trm_get_t_t0_distances_VEI_out.m

Sphere example:
eg_sphere_sample.m
eg_sphere_transmission.m
eg_sphere_tables_mr2p5.m
eg_sphere_plot.m
Cylinder sample:
	eg_cylinder_sample.m
eg_cylinder_transmission.m
eg_cylinder_tables_mr2p5.m
eg_cylinder_plot.m


Cylinder sample with the incident beam along z axis
eg_cylinder_sample.m
eg_cylinder_transmission90d.m
Eg_cylinderplo90d_theta_twotheta.m


Half cylinder sample with the incident beam along x axis
eg_half_cylinder_sample.m
eg_half_cylinder_transmission.m
eg_half_cylinder_plot_theta_twotheta.m

Cuboid sample:
eg_box_sample.m
eg_box_transmission.m
eg_box_plot_theta_twotheta.m

Prism sample:
eg_prism_sample.m
eg_prism_transmission.m
eg_prism_plot_theta_twotheta.m


The eg_ files are self explanatory.  

"Eg_*_sample.m" fikesincludes the sample definition with the surface equations. 

"Eg_*_transmission.m" files calculate the transmission giving theta and twotheta angles.

"Eg_*_plot_theta_twotheta.m" files calculate the transmission for a set of theta-twotheta angles and create a 2D plot of the calculated transmission.
