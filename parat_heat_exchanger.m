clear all
clc
%Initialising Input Parameters
%-----------------------------
dt = 0.01;

N = 100; %number of segments
nt = 85; %number of tubes (for D/spaceing = 10.166 arrangement 1 from the book

%in meter
L = 1.20; %length of the heat exchanger
dL = L / N;%length of a single segment
D = 0.5; %inner Diameter of shell
D_t = 0.0254; %outer diameter of single tube
tick_t = 0.001; %thickness of tube

%im m2
Ah = nt .* pi .* (D_t/2 - tick_t)^2; %section area of hot fluid
Ac = pi .* (D/2)^2 - nt .* pi .* (D_t/2)^2; %section area of cold fluid
Aw = Ac - Ah; %section area of the wall
At = nt .* 2 .* pi .* D_t .* dL; %heat transfer area for single segment

%in Kelvin
Tenv = 295; %temperature of environment
Thin = 363; %entering Temperature of the hot fluid 
Tcin = 289; %temperature of the cold fluid reserve, sea water
Tref=  348; %temperature wished to maintaind at the exit of the tubes

%set the initial temperature of fluids
% +1 is for the inflow sections
for i=1:1:N+1
    Th_init(i) = Tenv;
    Tc_init(i) = Tenv;
end

for i=1:1:N
Tw_init(i) = Tenv;
end

%in kg / m3
density_h = 1000; %mass density of fresh water
density_c = 1025; %mass density of sea water
density_w = 8000; %mass density of stainless steel

%in kg
mass_h = density_h * Ah * dL; %mass of hot fluid in a single segment
mass_c = density_c * Ac * dL; %mass of hot fluid in a single segment
mass_w = density_w * Aw * dL; %mass of the wall in a single segment

%in j/kg.K  https://www.engineeringtoolbox.com/
Cp_h = 4187; %heat capacity of the hot fluid fresh water
Cp_c = 4005; %heat capacity of the cold fluid sea water
C_w = 490; %%heat capacity of the wall carbon steel

%in w/m2.K
HTC_ref = 350; %reference Heat transfer coefficient

%in kg/s
m_ref = 3.5; %reference flow rate of mass
mh_start = 2.5; %staarting mass flow rate of hot fluid

%Initial Conditions
%-----------------------------
