load('So_TeCBPA_DW_200');
load('So_STZ_WW_200');
load('So_STZ_DW_200');
load('So_SMZ_WW_200');
load('So_SMZ_DW_200');
load('So_perchlorate_DW_200');
load('So_OP_WW_200');
load('So_OP_DW_200');
load('So_NP_WW_200');
load('So_NP_DW_200');
load('So_chlorite_DW_200');
load('So_BPF_WW_200');
load('So_BPF_DW_200');
load('So_BPB_WW_200');
load('So_BPA_WW_200');
load('So_BPA_DW_200');
load('So_Phenol_DW_200');
load('So_1CB_DW_200');
load('So_TCP_DW_200');
load('So_Chlorobutane_DW_200');
load('So_DCEthane_DW_200');
load('So_Dibromoethane_DW_200');
load('So_PCE_DW_200');
load('So_TCE_DW_200');


%% TeCPBA
% Unattached Laccase from Nicolucci paper looking at DW Influent values for
% TeCBPA - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on June 24, 2020
%initialize variables


n = 200;

activity_laccase_TeCBPA_Unattached_DW=zeros(n:1);
catalytic_efficiency_Laccase_TeCBPA_unattached_DW=zeros(n:1);
Vmax_TeCPBA_laccase_unattached_DW=lhsu(118.08,144.32,200)'; %+/- 10% based on 131.2
Km_TeCPBA_laccase_unattached_DW=lhsu(396,484,200); %+/- 10% based on 440


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_TeCBPA_Unattached_DW(i)=(Vmax_TeCPBA_laccase_unattached_DW(i)*So_TeCBPA_DW_200(i)/(Km_TeCPBA_laccase_unattached_DW(i)+So_TeCBPA_DW_200(i)));
catalytic_efficiency_Laccase_TeCBPA_unattached_DW(i)=activity_laccase_TeCBPA_Unattached_DW(i)/Km_TeCPBA_laccase_unattached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Nicolucci paper looking at DW Influent values for
% TeCBPA - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on June 24, 2020


%initialize variables

n = 200;

activity_laccase_TeCBPA_Attached_DW=zeros(n:1);
catalytic_efficiency_Laccase_TeCBPA_Attached_DW=zeros(n:1);
Vmax_TeCPBA_laccase_attached_DW=lhsu(56.25, 68.75, 2000); %+/- 10% from original value 62.5
Km_TeCPBA_laccase_attached_DW=lhsu(450,550,200);%+/- 10% from original value 500

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_TeCBPA_Attached_DW(i)=(Vmax_TeCPBA_laccase_attached_DW(i)*So_TeCBPA_DW_200(i)/(Km_TeCPBA_laccase_attached_DW(i)+So_TeCBPA_DW_200(i)));
catalytic_efficiency_Laccase_TeCBPA_Attached_DW(i)=activity_laccase_TeCBPA_Attached_DW(i)/Km_TeCPBA_laccase_attached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% STZ

% Unattached Laccase from Rahmani paper looking at WW Influent values for
% STZ - Wastewater Influent Values
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables


n = 200;

activity_laccase_STZ_Unattached_WW_Rahmani=zeros(n:1);
catalytic_efficiency_Laccase_STZ_unattached_WW_Rahmani=zeros(n:1);
Vmax_STZ_laccase_unattached_WW_Rahmani=lhsu(58738.5,71791.5,200)'; %+/- 10% based on 171.75
Km_STZ_laccase_unattached_WW_Rahmani=lhsu(73.8,90.2,200); %+/- 10% based on 700

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_STZ_Unattached_WW_Rahmani(i)=(Vmax_STZ_laccase_unattached_WW_Rahmani(i)*So_STZ_WW_200(i)/(Km_STZ_laccase_unattached_WW_Rahmani(i)+So_STZ_WW_200(i)));
catalytic_efficiency_Laccase_STZ_unattached_WW_Rahmani(i)=activity_laccase_STZ_Unattached_WW_Rahmani(i)/Km_STZ_laccase_unattached_WW_Rahmani(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Laccase from Rahmani paper looking at DW Influent values for
% STZ - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_laccase_STZ_Unattached_DW_Rahmani=zeros(n:1);
catalytic_efficiency_Laccase_STZ_unattached_DW_Rahmani=zeros(n:1);
Vmax_STZ_laccase_unattached_DW_Rahmani=lhsu(58738.5,71791.5,200)'; %+/- 10% based on 171.75
Km_STZ_laccase_unattached_DW_Rahmani=lhsu(73.8,90.2,200); %+/- 10% based on 700

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_STZ_Unattached_DW_Rahmani(i)=(Vmax_STZ_laccase_unattached_DW_Rahmani(i)*So_STZ_DW_200(i)/(Km_STZ_laccase_unattached_DW_Rahmani(i)+So_STZ_DW_200(i)));
catalytic_efficiency_Laccase_STZ_unattached_DW_Rahmani(i)=activity_laccase_STZ_Unattached_DW_Rahmani(i)/Km_STZ_laccase_unattached_DW_Rahmani(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Rahmani paper looking at WW Influent values for
% STZ - wastewater influent
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_laccase_STZ_Attached_WW_Rahmani=zeros(n:1);
catalytic_efficiency_Laccase_STZ_Attached_WW_Rahmani=zeros(n:1);
Vmax_STZ_laccase_attached_WW_Rahmani=lhsu(77.2875,94.4625,200)'; %+/- 10% based on 85.88
Km_STZ_laccase_attached_WW_Rahmani=lhsu(999,1221,200); %+/- 10% based on 1110

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_STZ_Attached_WW_Rahmani(i)=(Vmax_STZ_laccase_attached_WW_Rahmani(i)*So_STZ_WW_200(i)/(Km_STZ_laccase_attached_WW_Rahmani(i)+So_STZ_WW_200(i)));
catalytic_efficiency_Laccase_STZ_Attached_WW_Rahmani(i)=activity_laccase_STZ_Attached_WW_Rahmani(i)/Km_STZ_laccase_attached_WW_Rahmani(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Rahmani paper looking at DW Influent values for
% STZ - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_laccase_STZ_Attached_DW_Rahmani=zeros(n:1);
catalytic_efficiency_Laccase_STZ_Attached_DW_Rahmani=zeros(n:1);
Vmax_STZ_laccase_attached_DW_Rahmani=lhsu(77.2875,94.4625,200)'; %+/- 10% based on 85.88
Km_STZ_laccase_attached_DW_Rahmani=lhsu(999,1221,200); %+/- 10% based on 1110

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_STZ_Attached_DW_Rahmani(i)=(Vmax_STZ_laccase_attached_DW_Rahmani(i)*So_STZ_DW_200(i)/(Km_STZ_laccase_attached_DW_Rahmani(i)+So_STZ_DW_200(i)));
catalytic_efficiency_Laccase_STZ_Attached_DW_Rahmani(i)=activity_laccase_STZ_Attached_DW_Rahmani(i)/Km_STZ_laccase_attached_DW_Rahmani(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% SMZ

% Unattached Laccase from Rahmani paper looking at WW Influent values for
% SMZ - Wastewater Influent Values
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_laccase_SMZ_Unattached_WW=zeros(n:1);
catalytic_efficiency_Laccase_SMZ_unattached_WW=zeros(n:1);
Vmax_SMZ_laccase_unattached_WW_Rahmani=lhsu(58738.5,71791.5,200)'; %+/- 10% based on 171.75
Km_SMZ_laccase_unattached_WW_Rahmani=lhsu(73.8,90.2,200); %+/- 10% based on 700

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_SMZ_Unattached_WW(i)=(Vmax_SMZ_laccase_unattached_WW_Rahmani(i)*So_SMZ_WW_200(i)/(Km_SMZ_laccase_unattached_WW_Rahmani(i)+So_SMZ_WW_200(i)));
catalytic_efficiency_Laccase_SMZ_unattached_WW(i)=activity_laccase_SMZ_Unattached_WW(i)/Km_SMZ_laccase_unattached_WW_Rahmani(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Laccase from Rahmani paper looking at DW Influent values for
% SMZ - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_laccase_SMZ_Unattached_DW=zeros(n:1);
catalytic_efficiency_Laccase_SMZ_unattached_DW=zeros(n:1);
Vmax_SMZ_laccase_unattached_DW_Rahmani=lhsu(58738.5,71791.5,200)'; %+/- 10% based on 171.75
Km_SMZ_laccase_unattached_DW_Rahmani=lhsu(73.8,90.2,200); %+/- 10% based on 700

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_SMZ_Unattached_DW(i)=(Vmax_SMZ_laccase_unattached_DW_Rahmani(i)*So_SMZ_DW_200(i)/(Km_SMZ_laccase_unattached_DW_Rahmani(i)+So_SMZ_DW_200(i)));
catalytic_efficiency_Laccase_SMZ_unattached_DW(i)=activity_laccase_SMZ_Unattached_DW(i)/Km_SMZ_laccase_unattached_DW_Rahmani(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Rahmani paper looking at WW Influent values for
% SMZ - wastewater influent
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_laccase_SMZ_Attached_WW=zeros(n:1);
catalytic_efficiency_Laccase_SMZ_Attached_WW=zeros(n:1);
Vmax_SMZ_laccase_attached_WW_Rahmani=lhsu(77.2875,94.4625,200)'; %+/- 10% based on 85.88
Km_SMZ_laccase_attached_WW_Rahmani=lhsu(999,1221,200); %+/- 10% based on 1110

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_SMZ_Attached_WW(i)=(Vmax_SMZ_laccase_attached_WW_Rahmani(i)*So_SMZ_WW_200(i)/(Km_SMZ_laccase_attached_WW_Rahmani(i)+So_SMZ_WW_200(i)));
catalytic_efficiency_Laccase_SMZ_Attached_WW(i)=activity_laccase_SMZ_Attached_WW(i)/Km_SMZ_laccase_attached_WW_Rahmani(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Rahmani paper looking at DW Influent values for
% SMZ - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_laccase_SMZ_Attached_DW=zeros(n:1);
catalytic_efficiency_Laccase_SMZ_Attached_DW=zeros(n:1);
Vmax_SMZ_laccase_attached_DW_Rahmani=lhsu(77.2875,94.4625,200)'; %+/- 10% based on 85.88
Km_SMZ_laccase_attached_DW_Rahmani=lhsu(999,1221,200); %+/- 10% based on 1110

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_SMZ_Attached_DW(i)=(Vmax_SMZ_laccase_attached_DW_Rahmani(i)*So_SMZ_DW_200(i)/(Km_SMZ_laccase_attached_DW_Rahmani(i)+So_SMZ_DW_200(i)));
catalytic_efficiency_Laccase_SMZ_Attached_DW(i)=activity_laccase_SMZ_Attached_DW(i)/Km_SMZ_laccase_attached_DW_Rahmani(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% PcrA

% Unattached Perchlorate Reductase from purified enzyme. Model established
% from drinking water/finished water using Kengen et al 1999 values.
%Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Pcr_Perchlorate_Unattached_Kengen=zeros(n:1);
Vmax_Perchlorate_Pcr_unattached_DW_Kengen=latin_hs(128.25,13.5,200,1)';
Km_Perchlorate_Pcr_unattached_DW_Kengen=latin_hs(27,7,200,1);

% Code assumes all variables are uncertain
for i=1:n
    activity_Pcr_Perchlorate_Unattached_Kengen(i)=(Vmax_Perchlorate_Pcr_unattached_DW_Kengen(i)*So_perchlorate_DW_200(i)/(Km_Perchlorate_Pcr_unattached_DW_Kengen(i)+So_perchlorate_DW_200(i)));
catalytic_efficiency_Pcr_Kengen(i)=activity_Pcr_Perchlorate_Unattached_Kengen(i)/Km_Perchlorate_Pcr_unattached_DW_Kengen(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Perchlorate Reductase from purified enzyme. Model established
% from drinking water/finished water using Hutchison, 2015 values.
%Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Pcr_Perchlorate_Unattached_Hutchison=zeros(n:1);
Vmax_Perchlorate_Pcr_unattached_DW_Hutchison=latin_hs(148.5,12.56,200,1);
Km_Perchlorate_Pcr_unattached_DW_Hutchison=latin_hs(92,19,200,1);

% Code assumes all variables are uncertain
for i=1:n
    activity_Pcr_Perchlorate_Unattached_Hutchison(i)=(Vmax_Perchlorate_Pcr_unattached_DW_Hutchison(i)*So_perchlorate_DW_200(i)/(Km_Perchlorate_Pcr_unattached_DW_Hutchison(i)+So_perchlorate_DW_200(i)));
catalytic_efficiency_Pcr_Hutchison(i)=activity_Pcr_Perchlorate_Unattached_Hutchison(i)/Km_Perchlorate_Pcr_unattached_DW_Hutchison(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Perchlorate Reductase from purified enzyme. Model established
% from drinking water/finished water using Coates, et. al 2010 values.
%Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 2, 2020

%initialize variables

load('So_perchlorate_DW_200')

n = 200;

activity_Pcr_Perchlorate_Unattached_Coates=zeros(n:1);
Vmax_Perchlorate_Pcr_unattached_DW_Coates=latin_hs(148.5,12.56,200,1)';
Km_Perchlorate_Pcr_unattached_DW_Coates=lhsu(114.3,139.7,200); %+/- 10% from original value 127

% Code assumes all variables are uncertain
for i=1:n
    activity_Pcr_Perchlorate_Unattached_Coates(i)=(Vmax_Perchlorate_Pcr_unattached_DW_Coates(i)*So_perchlorate_DW_200(i)/(Km_Perchlorate_Pcr_unattached_DW_Coates(i)+So_perchlorate_DW_200(i)));
catalytic_efficiency_Pcr_Coates(i)=activity_Pcr_Perchlorate_Unattached_Coates(i)/Km_Perchlorate_Pcr_unattached_DW_Coates(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% OP

% Unattached Laccase from Catapame paper looking at WW Influent values for
% OP - 
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 18, 2020
%initialize variables

n = 200;

activity_laccase_OP_Unattached_WW=zeros(n:1);
catalytic_efficiency_Laccase_OP_unattached_WW=zeros(n:1);
Vmax_OP_laccase_unattached_WW_Catapame=lhsu(154.575,188.925,200)'; %+/- 10% based on 171.75
Km_OP_laccase_unattached_WW_Catapame=lhsu(630,770,200); %+/- 10% based on 700

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_OP_Unattached_WW(i)=(Vmax_OP_laccase_unattached_WW_Catapame(i)*So_OP_WW_200(i)/(Km_OP_laccase_unattached_WW_Catapame(i)+So_OP_WW_200(i)));
catalytic_efficiency_Laccase_OP_unattached_WW(i)=activity_laccase_OP_Unattached_WW(i)/Km_OP_laccase_unattached_WW_Catapame(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Laccase from Catapame paper looking at DW Influent values for
% OP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 18, 2020
%initialize variables

n = 200;

activity_laccase_OP_Unattached_DW=zeros(n:1);
catalytic_efficiency_Laccase_OP_unattached_DW=zeros(n:1);
Vmax_OP_laccase_unattached_DW_Catapame=lhsu(154.575,188.925,200)'; %+/- 10% based on 171.75
Km_OP_laccase_unattached_DW_Catapame=lhsu(630,770,200); %+/- 10% based on 700

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_OP_Unattached_DW(i)=(Vmax_OP_laccase_unattached_DW_Catapame(i)*So_OP_DW_200(i)/(Km_OP_laccase_unattached_DW_Catapame(i)+So_OP_DW_200(i)));
catalytic_efficiency_Laccase_OP_unattached_DW(i)=activity_laccase_OP_Unattached_DW(i)/Km_OP_laccase_unattached_DW_Catapame(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Catapame paper looking at WW Influent values for
% OP - wastewater influent
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 18, 2020
%initialize variables

n = 200;

activity_laccase_OP_Attached_WW=zeros(n:1);
catalytic_efficiency_Laccase_OP_Attached_WW=zeros(n:1);
Vmax_OP_laccase_attached_WW_Catapame=lhsu(77.2875,94.4625,200)'; %+/- 10% based on 85.88
Km_OP_laccase_attached_WW_Catapame=lhsu(999,1221,200); %+/- 10% based on 1110

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_OP_Attached_WW(i)=(Vmax_OP_laccase_attached_WW_Catapame(i)*So_OP_WW_200(i)/(Km_OP_laccase_attached_WW_Catapame(i)+So_OP_WW_200(i)));
catalytic_efficiency_Laccase_OP_Attached_WW(i)=activity_laccase_OP_Attached_WW(i)/Km_OP_laccase_attached_WW_Catapame(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Catapame paper looking at DW Influent values for
% OP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 18, 2020
%initialize variables

n = 200;

activity_laccase_OP_Attached_DW=zeros(n:1);
catalytic_efficiency_Laccase_OP_Attached_DW=zeros(n:1);
Vmax_OP_laccase_attached_DW_Catapame=lhsu(77.2875,94.4625,200)'; %+/- 10% based on 85.88
Km_OP_laccase_attached_DW_Catapame=lhsu(999,1221,200); %+/- 10% based on 1110

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_OP_Attached_DW(i)=(Vmax_OP_laccase_attached_DW_Catapame(i)*So_OP_DW_200(i)/(Km_OP_laccase_attached_DW_Catapame(i)+So_OP_DW_200(i)));
catalytic_efficiency_Laccase_OP_Attached_DW(i)=activity_laccase_OP_Attached_DW(i)/Km_OP_laccase_attached_DW_Catapame(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% NP

% Unattached Laccase from Catapame paper looking at WW Influent values for
% NP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 17, 2020
%initialize variables

n = 200;

activity_laccase_NP_Unattached_WW=zeros(n:1);
catalytic_efficiency_Laccase_NP_Unattached_WW=zeros(n:1);
Vmax_NP_laccase_unattached_WW_Catapame=lhsu(99.77,81.63,200)'; %+/- 10% based on 90.7
Km_NP_laccase_unattached_WW_Catapame=lhsu(378,462,200); %+/- 10% based on 420

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_NP_Unattached_WW(i)=(Vmax_NP_laccase_unattached_WW_Catapame(i)*So_NP_WW_200(i)/(Km_NP_laccase_unattached_WW_Catapame(i)+So_NP_WW_200(i)));
catalytic_efficiency_Laccase_NP_Unattached_WW(i)=activity_laccase_NP_Unattached_WW(i)/Km_NP_laccase_unattached_WW_Catapame(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Laccase from Catapame paper looking at DW Influent values for
% NP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 17, 2020
%initialize variables

n = 200;

activity_laccase_NP_Unattached_DW=zeros(n:1);
catalytic_efficiency_Laccase_NP_Unattached_DW=zeros(n:1);
Vmax_NP_laccase_unattached_DW_Catapame=lhsu(99.77,81.63,200)'; %+/- 10% based on 90.7
Km_NP_laccase_unattached_DW_Catapame=lhsu(378,462,200); %+/- 10% based on 420

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_NP_Unattached_DW(i)=(Vmax_NP_laccase_unattached_DW_Catapame(i)*So_NP_DW_200(i)/(Km_NP_laccase_unattached_DW_Catapame(i)+So_NP_DW_200(i)));
catalytic_efficiency_Laccase_NP_Unattached_DW(i)=activity_laccase_NP_Unattached_DW(i)/Km_NP_laccase_unattached_DW_Catapame(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Catapame paper looking at WW Influent values for
% NP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 17, 2020
%initialize variables

n = 200;

activity_laccase_NP_Attached_WW=zeros(n:1);
catalytic_efficiency_Laccase_NP_Attached_WW=zeros(n:1);
Vmax_NP_laccase_attached_WW_Catapame=lhsu(43.281,52.899,200)'; %+/- 10% based on 48.09
Km_NP_laccase_attached_WW_Catapame=lhsu(648,792,200); %+/- 10% based on 420

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_NP_Attached_WW(i)=(Vmax_NP_laccase_attached_WW_Catapame(i)*So_NP_WW_200(i)/(Km_NP_laccase_attached_WW_Catapame(i)+So_NP_WW_200(i)));
catalytic_efficiency_Laccase_NP_Attached_WW(i)=activity_laccase_NP_Attached_WW(i)/Km_NP_laccase_attached_WW_Catapame(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Catapame paper looking at DW Influent values for
% NP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 17, 2020
%initialize variables

n = 200;

activity_laccase_NP_Attached_DW=zeros(n:1);
catalytic_efficiency_Laccase_NP_Attached_DW=zeros(n:1);
Vmax_NP_laccase_attached_DW_Catapame=lhsu(43.281,52.899,200)'; %+/- 10% based on 48.09
Km_NP_laccase_attached_DW_Catapame=lhsu(648,792,200); %+/- 10% based on 420


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_NP_Attached_DW(i)=(Vmax_NP_laccase_attached_DW_Catapame(i)*So_NP_DW_200(i)/(Km_NP_laccase_attached_DW_Catapame(i)+So_NP_DW_200(i)));
catalytic_efficiency_Laccase_NP_Attached_DW(i)=activity_laccase_NP_Attached_DW(i)/Km_NP_laccase_attached_DW_Catapame(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');



% Unattached Horseradish Peroxidase (HP) from Dong 2013 paper looking at WW Influent values for
% NP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_HP_NP_Unattached_WW=zeros(n:1);
catalytic_efficiency_HP_NP_Unattached_WW=zeros(n:1);
Vmax_NP_HP_unattached_WW_Dong=lhsu(756,924,200)'; %+/- 10% based on 90.7
Km_NP_HP_unattached_WW_Dong=lhsu(9.09,11.11,200); %+/- 10% based on 420

% Code assumes all variables are uncertain
for i=1:n
    activity_HP_NP_Unattached_WW(i)=(Vmax_NP_HP_unattached_WW_Dong(i)*So_NP_WW_200(i)/(Km_NP_HP_unattached_WW_Dong(i)+So_NP_WW_200(i)));
catalytic_efficiency_HP_NP_Unattached_WW(i)=activity_HP_NP_Unattached_WW(i)/Km_NP_HP_unattached_WW_Dong(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Horseradish Peroxidase (HP) from Dong 2013 paper looking at DW Influent values for
% NP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_HP_NP_Unattached_DW=zeros(n:1);
catalytic_efficiency_HP_NP_Unattached_DW=zeros(n:1);
Vmax_NP_HP_unattached_DW_Dong=lhsu(756,924,200)'; %+/- 10% based on 90.7
Km_NP_HP_unattached_DW_Dong=lhsu(9.09,11.11,200); %+/- 10% based on 420

% Code assumes all variables are uncertain
for i=1:n
    activity_HP_NP_Unattached_DW(i)=(Vmax_NP_HP_unattached_DW_Dong(i)*So_NP_DW_200(i)/(Km_NP_HP_unattached_DW_Dong(i)+So_NP_DW_200(i)));
catalytic_efficiency_HP_NP_Unattached_DW(i)=activity_HP_NP_Unattached_DW(i)/Km_NP_HP_unattached_DW_Dong(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');



% Unattached Lignin Peroxidase (LP) from Dong 2013 paper looking at WW Influent values for
% NP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_LP_NP_Unattached_WW=zeros(n:1);
catalytic_efficiency_LP_NP_Unattached_WW=zeros(n:1);
Vmax_NP_LP_unattached_WW_Dong=lhsu(426.6,521.4,200)'; %+/- 10% based on 90.7
Km_NP_LP_unattached_WW_Dong=lhsu(4.05,4.95,200); %+/- 10% based on 420

% Code assumes all variables are uncertain
for i=1:n
    activity_LP_NP_Unattached_WW(i)=(Vmax_NP_LP_unattached_WW_Dong(i)*So_NP_WW_200(i)/(Km_NP_LP_unattached_WW_Dong(i)+So_NP_WW_200(i)));
catalytic_efficiency_LP_NP_Unattached_WW(i)=activity_LP_NP_Unattached_WW(i)/Km_NP_LP_unattached_WW_Dong(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Lignin Peroxidase (LP) from Dong 2013 paper looking at DW Influent values for
% NP - combined ground/surfance water and finished water values.
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020
%initialize variables

n = 200;

activity_LP_NP_Unattached_DW=zeros(n:1);
catalytic_efficiency_LP_NP_Unattached_DW=zeros(n:1);
Vmax_NP_LP_unattached_DW_Dong=lhsu(426.6,521.4,200)'; %+/- 10% based on 90.7
Km_NP_LP_unattached_DW_Dong=lhsu(4.05,4.95,200); %+/- 10% based on 420

% Code assumes all variables are uncertain
for i=1:n
    activity_LP_NP_Unattached_DW(i)=(Vmax_NP_LP_unattached_DW_Dong(i)*So_NP_DW_200(i)/(Km_NP_LP_unattached_DW_Dong(i)+So_NP_DW_200(i)));
catalytic_efficiency_LP_NP_Unattached_DW(i)=activity_LP_NP_Unattached_DW(i)/Km_NP_LP_unattached_DW_Dong(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% Cld

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using vanGinkel 1996
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_VanGinkel=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_VanGinkel=lhsu(63360,77440,200); %+/- 10% from 70400
Km_Cld_Chlorite_Unattached_VanGinkel=lhsu(153,187,200); %+/- 10% from 170


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_VanGinkel(i)=(Vmax_Cld_Chlorite_Unattached_VanGinkel(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_VanGinkel(i)+So_chlorite_DW_200(i)));
    catalytic_efficiency_Cld_VanGinkel(i)=activity_Cld_Chlorite_Unattached_VanGinkel(i)/Km_Cld_Chlorite_Unattached_VanGinkel(i);   
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Streit 2008
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Streit=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Streit=latin_hs(453000,20000,200,1);
Km_Cld_Chlorite_Unattached_Streit=latin_hs(215,25,200,1);

% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Streit(i)=(Vmax_Cld_Chlorite_Unattached_Streit(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Streit(i)+So_chlorite_DW_200(i)));
    catalytic_efficiency_Cld_Streit(i)=activity_Cld_Chlorite_Unattached_Streit(i)/Km_Cld_Chlorite_Unattached_Streit(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');


% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Stenklo et al 2001
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Stenklo=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Stenklo=latin_hs(107500,10000,200,1);
Km_Cld_Chlorite_Unattached_Stenklo=latin_hs(260,70,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Stenklo(i)=(Vmax_Cld_Chlorite_Unattached_Stenklo(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Stenklo(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Stenklo(i)=activity_Cld_Chlorite_Unattached_Stenklo(i)/Km_Cld_Chlorite_Unattached_Stenklo(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Mobilia rNw 2017
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Mobilia_rNw=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Mobilia_rNw=latin_hs(9500,2600,200,1);
Km_Cld_Chlorite_Unattached_Mobilia_rNw=latin_hs(380,150,200,1);

% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Mobilia_rNw(i)=(Vmax_Cld_Chlorite_Unattached_Mobilia_rNw(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Mobilia_rNw(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Mobilia_rNw(i)=activity_Cld_Chlorite_Unattached_Mobilia_rNw(i)/Km_Cld_Chlorite_Unattached_Mobilia_rNw(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Mobilia rND 2017
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Mobilia_rND=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Mobilia_rND=latin_hs(190000,41000,200,1);
Km_Cld_Chlorite_Unattached_Mobilia_rND=latin_hs(2500,470,200,1);

% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Mobilia_rND(i)=(Vmax_Cld_Chlorite_Unattached_Mobilia_rND(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Mobilia_rND(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Mobilia_rND(i)=activity_Cld_Chlorite_Unattached_Mobilia_rND(i)/Km_Cld_Chlorite_Unattached_Mobilia_rND(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Mobilia rID 2017
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Mobilia_rID=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Mobilia_rID=latin_hs(46000,28000,200,1);
Km_Cld_Chlorite_Unattached_Mobilia_rID=latin_hs(320,160,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Mobilia_rID(i)=(Vmax_Cld_Chlorite_Unattached_Mobilia_rID(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Mobilia_rID(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Mobilia_rID(i)=activity_Cld_Chlorite_Unattached_Mobilia_rID(i)/Km_Cld_Chlorite_Unattached_Mobilia_rID(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Mobilia MbCld 2017
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Mobilia_MbCld=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Mobilia_MbCld=latin_hs(79000,39000,200,1);
Km_Cld_Chlorite_Unattached_Mobilia_MbCld=latin_hs(360,210,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Mobilia_MbCld(i)=(Vmax_Cld_Chlorite_Unattached_Mobilia_MbCld(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Mobilia_MbCld(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Mobilia_MbCld(i)=activity_Cld_Chlorite_Unattached_Mobilia_MbCld(i)/Km_Cld_Chlorite_Unattached_Mobilia_MbCld(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');


% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Mobilia DaCld 2017
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Mobilia_DaCld=zeros(n:1);
Vmax__Cld_Chlorite_Unattached_Mobilia_DaCld=latin_hs(19000,5200,200,1);
Km__Cld_Chlorite_Unattached_Mobilia_DaCld=latin_hs(290,170,200,1);

% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Mobilia_DaCld(i)=(Vmax__Cld_Chlorite_Unattached_Mobilia_DaCld(i)*So_chlorite_DW_200(i)/(Km__Cld_Chlorite_Unattached_Mobilia_DaCld(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Mobilia_DaCld(i)=activity_Cld_Chlorite_Unattached_Mobilia_DaCld(i)/Km__Cld_Chlorite_Unattached_Mobilia_DaCld(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Mobilia AoPS 2017
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Mobilia_AoPS=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Mobilia_AoPS=latin_hs(50000,17000,200,1);
Km_Cld_Chlorite_Unattached_Mobilia_AoPS=latin_hs(360,54,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Mobilia_AoPS(i)=(Vmax_Cld_Chlorite_Unattached_Mobilia_AoPS(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Mobilia_AoPS(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Mobilia_AoPS(i)=activity_Cld_Chlorite_Unattached_Mobilia_AoPS(i)/Km_Cld_Chlorite_Unattached_Mobilia_AoPS(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Mobilia AoGR 2017
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Mobilia_AoGR=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Mobilia_AoGR=latin_hs(28000,15000,200,1);
Km_Cld_Chlorite_Unattached_Mobilia_AoGR=latin_hs(330,110,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Mobilia_AoGR(i)=(Vmax_Cld_Chlorite_Unattached_Mobilia_AoGR(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Mobilia_AoGR(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Mobilia_AoGR(i)=activity_Cld_Chlorite_Unattached_Mobilia_AoGR(i)/Km_Cld_Chlorite_Unattached_Mobilia_AoGR(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Mlynek 2011
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Mlynek=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Mlynek=lhsu(10260,12540,200); %+/-10% from 11400
Km_Cld_Chlorite_Unattached_Mlynek=lhsu(81,99,200); %+/1 10% from 90


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Mlynek(i)=(Vmax_Cld_Chlorite_Unattached_Mlynek(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Mlynek(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Mlynek(i)=activity_Cld_Chlorite_Unattached_Mlynek(i)/Km_Cld_Chlorite_Unattached_Mlynek(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Mehboob 2009
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables


n = 200;

activity_Cld_Chlorite_Unattached_Mehboob=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Mehboob=lhsu(12387.6,15140.4,200); %+/- 10% from 13764
Km_Cld_Chlorite_Unattached_Mehboob=lhsu(75.6,92.4,200); %+/- 10% from 84


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Mehboob(i)=(Vmax_Cld_Chlorite_Unattached_Mehboob(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Mehboob(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Mehboob(i)=activity_Cld_Chlorite_Unattached_Mehboob(i)/Km_Cld_Chlorite_Unattached_Mehboob(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Maixner 2010
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Maixner=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Maixner=lhsu(51840,63360,200); %+/- 10% from 57600
Km_Cld_Chlorite_Unattached_Maixner=latin_hs(15800,1100,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Maixner(i)=(Vmax_Cld_Chlorite_Unattached_Maixner(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Maixner(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Maixner(i)=activity_Cld_Chlorite_Unattached_Maixner(i)/Km_Cld_Chlorite_Unattached_Maixner(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Kostan WT 2010
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Kostan_WT=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Kostan_WT=lhsu(1890,2310,200); %+/- 10% from 2100
Km_Cld_Chlorite_Unattached_Kostan_WT=latin_hs(58,37,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Kostan_WT(i)=(Vmax_Cld_Chlorite_Unattached_Kostan_WT(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Kostan_WT(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Kostan_WT(i)=activity_Cld_Chlorite_Unattached_Kostan_WT(i)/Km_Cld_Chlorite_Unattached_Kostan_WT(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Kostan R173K 2010
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Kostan_R173K=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Kostan_R173K=lhsu(1134,1386,200); % +/-10% from 1260
Km_Cld_Chlorite_Unattached_Kostan_R173K=latin_hs(818,250,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Kostan_R173K(i)=(Vmax_Cld_Chlorite_Unattached_Kostan_R173K(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Kostan_R173K(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Kostan_R173K(i)=activity_Cld_Chlorite_Unattached_Kostan_R173K(i)/Km_Cld_Chlorite_Unattached_Kostan_R173K(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Kostan R173A 2010
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Kostan_R173A=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Kostan_R173A=lhsu(383.4,468.6,200); %+/- 10% from 426
Km_Cld_Chlorite_Unattached_Kostan_R173A=latin_hs(107,54,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Kostan_R173A(i)=(Vmax_Cld_Chlorite_Unattached_Kostan_R173A(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Kostan_R173A(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Kostan_R173A(i)=activity_Cld_Chlorite_Unattached_Kostan_R173A(i)/Km_Cld_Chlorite_Unattached_Kostan_R173A(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Chlorite Dismutase from purified enzyme. Model established
% from surface and ground water using Ebihara 2015
%Data obtained from 'Kinetic Parameters for Biocatalysts' on August 2, 2020

%initialize variables

n = 200;

activity_Cld_Chlorite_Unattached_Ebihara=zeros(n:1);
Vmax_Cld_Chlorite_Unattached_Ebihara=lhsu(41.59,50.82,200); %+/- 10% from 46.2
Km_Cld_Chlorite_Unattached_Ebihara=lhsu(11700,14300,200); %+/- 10% from 13000;


% Code assumes all variables are uncertain
for i=1:n
    activity_Cld_Chlorite_Unattached_Ebihara(i)=(Vmax_Cld_Chlorite_Unattached_Ebihara(i)*So_chlorite_DW_200(i)/(Km_Cld_Chlorite_Unattached_Ebihara(i)+So_chlorite_DW_200(i)));
catalytic_efficiency_Cld_Ebihara(i)=activity_Cld_Chlorite_Unattached_Ebihara(i)/Km_Cld_Chlorite_Unattached_Ebihara(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% BPF

% Unattached Laccase from Nicolucci paper looking at WWTP Influent values for bisphenol F (BPF)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on June 24, 2020

%initialize variables

n = 200;

activity_laccase_BPF_Unattached_WW=zeros(n:1);
Vmax_laccase_BPF_Unattached_WW=lhsu(454.41,555.39,200); %+/- 10% from original value 504.9
Km_laccase_BPF_Unattached_WW=lhsu(162,198,200); %+/- 10% from original value 180

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPF_Unattached_WW(i)=(Vmax_laccase_BPF_Unattached_WW(i)*So_BPF_WW_200(i)/(Km_laccase_BPF_Unattached_WW(i)+So_BPF_WW_200(i)));
catalytic_efficiency_laccase_BPF_Unattached_WW(i)=activity_laccase_BPF_Unattached_WW(i)/Km_laccase_BPF_Unattached_WW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Laccase from Nicolucci paper looking at DWTP Influent values for bisphenol F (BPF)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on June 24, 2020

%initialize variables

n = 200;

activity_laccase_BPF_Unattached_DW=zeros(n:1);
Vmax_laccase_BPF_Unattached_DW=lhsu(454.41,555.39,200); %+/- 10% from original value of 504.9
Km_laccase_BPF_Unattached_DW=lhsu(162,198,200); %+/- 10% from original value of 180


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPF_Unattached_DW(i)=(Vmax_laccase_BPF_Unattached_DW(i)*So_BPF_DW_200(i)/(Km_laccase_BPF_Unattached_DW(i)+So_BPF_DW_200(i)));
catalytic_efficiency_laccase_BPF_Unattached_DW(i)=activity_laccase_BPF_Unattached_DW(i)/Km_laccase_BPF_Unattached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Nicolucci paper looking at WWTP Influent values for bisphenol F (BPF)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on June 24, 2020


%initialize variables

n = 200;

activity_laccase_BPF_Attached_WW=zeros(n:1);
Vmax_laccase_BPF_Attached_WW=lhsu(160.74,196.46,200); %+/- 10% from 178.6
Km_laccase_BPF_Attached_WW=lhsu(216,264,200); %+/- 10% from 240;


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPF_Attached_WW(i)=(Vmax_laccase_BPF_Attached_WW(i)*So_BPF_WW_200(i)/(Km_laccase_BPF_Attached_WW(i)+So_BPF_WW_200(i)));
catalytic_efficiency_laccase_BPF_attached_WW(i)=activity_laccase_BPF_Attached_WW(i)/Km_laccase_BPF_Attached_WW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Nicolucci paper looking at DW Influent values for bisphenol F (BPF)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on June 24, 2020


%initialize variables

n = 200;

activity_laccase_BPF_Attached_DW=zeros(n:1);
Vmax_laccase_BPF_Attached_DW=lhsu(160.74,196.46,200); %+/- 10% from 178.6
Km_laccase_BPF_Attached_DW=lhsu(216,264,200); %+/- 10% from 240


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPF_Attached_DW(i)=(Vmax_laccase_BPF_Attached_DW(i)*So_BPF_DW_200(i)/(Km_laccase_BPF_Attached_DW(i)+So_BPF_DW_200(i)));
catalytic_efficiency_laccase_BPF_attached_DW(i)=activity_laccase_BPF_Attached_DW(i)/Km_laccase_BPF_Attached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% BPB

% Unattached Laccase from Nicolucci paper looking at WWTP Influent values for bisphenol B (BPB)
%Data obtained from 'Kinetic Parameters fro Biocatalysts' on June 24, 2020

%initialize variables

n = 200;

activity_laccase_BPB_Unattached_WW=zeros(n:1);
Vmax_laccase_BPB_Unattached_WW=lhsu(309.15,377.85,200); %+/- 10% from 343.5
Km_laccase_BPB_Unattached_WW=lhsu(450,550,200); %/- 10% from 500


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPB_Unattached_WW(i)=(Vmax_laccase_BPB_Unattached_WW(i)*So_BPB_WW_200(i)/(Km_laccase_BPB_Unattached_WW(i)+So_BPB_WW_200(i)));
catalytic_efficiency_laccase_BPB_Unattached_WW(i)=activity_laccase_BPB_Unattached_WW(i)/Km_laccase_BPB_Unattached_WW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Nicolucci paper looking at WWTP Influent values for bisphenol B (BPB)
%Data obtained from 'Kinetic Parameters fro Biocatalysts' on June 24, 2020
%initialize variables

n = 200;

activity_laccase_BPB_Attached_WW=zeros(n:1);
Vmax_laccase_BPB_Attached_WW=lhsu(95.85,117.15,200); %+/- 10% from 106.5;
Km_laccase_BPB_Attached_WW=lhsu(495,605,200); %+/- 10% from 550


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPB_Attached_WW(i)=(Vmax_laccase_BPB_Attached_WW(i)*So_BPB_WW_200(i)/(Km_laccase_BPB_Attached_WW(i)+So_BPB_WW_200(i)));
catalytic_efficiency_laccase_BPF_attached_WW(i)=activity_laccase_BPB_Attached_WW(i)/Km_laccase_BPB_Attached_WW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% BPA

% Unattached Laccase from Bayramoglu paper looking at WWTP Influent values for bisphenol A (BPA)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_laccase_BPA_Unattached_WW=zeros(n:1);
catalytic_efficiency_laccase_BPA_Unattached_WW=zeros(n:1);
Vmax_laccase_BPA_Unattached_WW=lhsu(1335.528,1632.312,200); %+/- 10% from original value 504.9
Km_laccase_BPA_Unattached_WW=lhsu(243,297,200); %+/- 10% from original value 180

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPA_Unattached_WW(i)=(Vmax_laccase_BPA_Unattached_WW(i)*So_BPA_WW_200(i)/(Km_laccase_BPA_Unattached_WW(i)+So_BPA_WW_200(i)));
catalytic_efficiency_laccase_BPA_Unattached_WW(i)=activity_laccase_BPA_Unattached_WW(i)/Km_laccase_BPA_Unattached_WW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Laccase from Bayramoglu paper looking at DWTP Influent values for bisphenol A (BPA)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_laccase_BPA_Unattached_DW=zeros(n:1);
Vmax_laccase_BPA_Unattached_DW=lhsu(1335.528,1632.312,200); %+/- 10% from original value of 504.9
Km_laccase_BPA_Unattached_DW=lhsu(243,297,200); %+/- 10% from original value of 180


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPA_Unattached_DW(i)=(Vmax_laccase_BPA_Unattached_DW(i)*So_BPA_DW_200(i)/(Km_laccase_BPA_Unattached_DW(i)+So_BPA_DW_200(i)));
catalytic_efficiency_laccase_BPA_Unattached_DW(i)=activity_laccase_BPA_Unattached_DW(i)/Km_laccase_BPA_Unattached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Bayramoglu paper looking at WWTP Influent values for bisphenol A (BPA)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_laccase_BPA_Attached_WW=zeros(n:1);
Vmax_laccase_BPA_Attached_WW=lhsu(1143.855,1398.045,200); %+/- 10% from 178.6
Km_laccase_BPA_Attached_WW=lhsu(297,363,200); %+/- 10% from 240;


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPA_Attached_WW(i)=(Vmax_laccase_BPA_Attached_WW(i)*So_BPA_WW_200(i)/(Km_laccase_BPA_Attached_WW(i)+So_BPA_WW_200(i)));
catalytic_efficiency_laccase_BPA_attached_WW(i)=activity_laccase_BPA_Attached_WW(i)/Km_laccase_BPA_Attached_WW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Bayramoglu paper looking at DW Influent values for bisphenol A (BPA)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_laccase_BPA_Attached_DW=zeros(n:1);
Vmax_laccase_BPA_Attached_DW=lhsu(1143.855,1398.045,200); %+/- 10% from 178.6
Km_laccase_BPA_Attached_DW=lhsu(297,363,200); %+/- 10% from 240


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_BPA_Attached_DW(i)=(Vmax_laccase_BPA_Attached_DW(i)*So_BPA_DW_200(i)/(Km_laccase_BPA_Attached_DW(i)+So_BPA_DW_200(i)));
catalytic_efficiency_laccase_BPA_attached_DW(i)=activity_laccase_BPA_Attached_DW(i)/Km_laccase_BPA_Attached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');




% Unattached Laccase from Brugnari paper looking at WWTP Influent values for bisphenol A (BPA)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_laccase_Brugnari_BPA_Unattached_WW=zeros(n:1);
catalytic_efficiency_laccase_Brugnari_BPA_Unattached_WW=zeros(n:1);
Vmax_laccase_Brugnari_BPA_Unattached_WW=latin_hs(1.34,0.12,200,1); 
Km_laccase_Brugnari_BPA_Unattached_WW=latin_hs(91,42,200,1); 

% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_Brugnari_BPA_Unattached_WW(i)=(Vmax_laccase_Brugnari_BPA_Unattached_WW(i)*So_BPA_WW_200(i)/(Km_laccase_Brugnari_BPA_Unattached_WW(i)+So_BPA_WW_200(i)));
catalytic_efficiency_laccase_Brugnari_BPA_Unattached_WW(i)=activity_laccase_Brugnari_BPA_Unattached_WW(i)/Km_laccase_Brugnari_BPA_Unattached_WW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Laccase from Brugnari paper looking at DWTP Influent values for bisphenol A (BPA)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_laccase_Brugnari_BPA_Unattached_DW=zeros(n:1);
Vmax_laccase_Brugnari_BPA_Unattached_DW=latin_hs(1.34,0.12,200,1); 
Km_laccase_Brugnari_BPA_Unattached_DW=latin_hs(91,42,200,1); 


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_Brugnari_BPA_Unattached_DW(i)=(Vmax_laccase_Brugnari_BPA_Unattached_DW(i)*So_BPA_DW_200(i)/(Km_laccase_Brugnari_BPA_Unattached_DW(i)+So_BPA_DW_200(i)));
catalytic_efficiency_laccase_Brugnari_BPA_Unattached_DW(i)=activity_laccase_Brugnari_BPA_Unattached_DW(i)/Km_laccase_Brugnari_BPA_Unattached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Brugnari paper looking at WWTP Influent values for bisphenol A (BPA)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_laccase_Brugnari_BPA_Attached_WW=zeros(n:1);
Vmax_laccase_Brugnari_BPA_Attached_WW=latin_hs(0.63,0.09,200,1); 
Km_laccase_Brugnari_BPA_Attached_WW=latin_hs(150,20,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_Brugnari_BPA_Attached_WW(i)=(Vmax_laccase_Brugnari_BPA_Attached_WW(i)*So_BPA_WW_200(i)/(Km_laccase_Brugnari_BPA_Attached_WW(i)+So_BPA_WW_200(i)));
catalytic_efficiency_laccase_Brugnari_BPA_attached_WW(i)=activity_laccase_Brugnari_BPA_Attached_WW(i)/Km_laccase_Brugnari_BPA_Attached_WW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Brugnari paper looking at DW Influent values for bisphenol A (BPA)
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_laccase_Brugnari_BPA_Attached_DW=zeros(n:1);
Vmax_laccase_Brugnari_BPA_Attached_DW=latin_hs(0.63,0.09,200,1); 
Km_laccase_Brugnari_BPA_Attached_DW=latin_hs(150,20,200,1);


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_Brugnari_BPA_Attached_DW(i)=(Vmax_laccase_Brugnari_BPA_Attached_DW(i)*So_BPA_DW_200(i)/(Km_laccase_Brugnari_BPA_Attached_DW(i)+So_BPA_DW_200(i)));
catalytic_efficiency_laccase_Brugnari_BPA_attached_DW(i)=activity_laccase_Brugnari_BPA_Attached_DW(i)/Km_laccase_Brugnari_BPA_Attached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% Phenol

% Unattached Tyrosinase from Wu 2017 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_tyrosinase_phenol_Unattached_DW=zeros(n:1);
Vmax_tyrosinase_phenol_Unattached_DW=lhsu(2594.56,3171.13,200); %+/- 10% from original value of 504.9
Km_tyrosinase_phenol_Unattached_DW=lhsu(702,858,200); %+/- 10% from original value of 180


% Code assumes all variables are uncertain
for i=1:n
    activity_tyrosinase_phenol_Unattached_DW(i)=(Vmax_tyrosinase_phenol_Unattached_DW(i)*So_Phenol_DW_200(i)/(Km_tyrosinase_phenol_Unattached_DW(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_tyrosinase_phenol_Unattached_DW(i)=activity_tyrosinase_phenol_Unattached_DW(i)/Km_tyrosinase_phenol_Unattached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Tyrosinase from Wu 2017 paper looking at DW Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_tyrosinase_phenol_Attached_DW=zeros(n:1);
Vmax_tyrosinase_phenol_Attached_DW=lhsu(2124.28,2596.34,200); %+/- 10% from 178.6
Km_tyrosinase_phenol_Attached_DW=lhsu(2169,2651,200); %+/- 10% from 240


% Code assumes all variables are uncertain
for i=1:n
    activity_tyrosinase_phenol_Attached_DW(i)=(Vmax_tyrosinase_phenol_Attached_DW(i)*So_Phenol_DW_200(i)/(Km_tyrosinase_phenol_Attached_DW(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_tyrosinase_phenol_attached_DW(i)=activity_tyrosinase_phenol_Attached_DW(i)/Km_tyrosinase_phenol_Attached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Laccase from Mohammadi 2018 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_laccase_phenol_Unattached_DW=zeros(n:1);
Vmax_laccase_phenol_Unattached_DW=lhsu(765,935,200); %+/- 10% from original value of 504.9
Km_laccase_phenol_Unattached_DW=lhsu(21.618,26.422,200); %+/- 10% from original value of 180


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_phenol_Unattached_DW(i)=(Vmax_laccase_phenol_Unattached_DW(i)*So_Phenol_DW_200(i)/(Km_laccase_phenol_Unattached_DW(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_laccase_phenol_Unattached_DW(i)=activity_laccase_phenol_Unattached_DW(i)/Km_laccase_phenol_Unattached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Laccase from Mohammadi 2018 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_laccase_phenol_Attached_DW=zeros(n:1);
Vmax_laccase_phenol_Attached_DW=lhsu(119.34,145.86,200); %+/- 10% from 178.6
Km_laccase_phenol_Attached_DW=lhsu(22.77,27.83,200); %+/- 10% from 240


% Code assumes all variables are uncertain
for i=1:n
    activity_laccase_phenol_Attached_DW(i)=(Vmax_laccase_phenol_Attached_DW(i)*So_Phenol_DW_200(i)/(Km_laccase_phenol_Attached_DW(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_laccase_phenol_attached_DW(i)=activity_laccase_phenol_Attached_DW(i)/Km_laccase_phenol_Attached_DW(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Horseradish Peroxidase (HP) from Bayramoglu 2007 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_HP_phenol_Unattached_DW_Bayramoglu=zeros(n:1);
Vmax_HP_phenol_Unattached_DW_Bayramoglu=lhsu(765,935,200); %+/- 10% from original value of 504.9
Km_HP_phenol_Unattached_DW_Bayramoglu=lhsu(21.618,26.422,200); %+/- 10% from original value of 180


% Code assumes all variables are uncertain
for i=1:n
    activity_HP_phenol_Unattached_DW_Bayramoglu(i)=(Vmax_HP_phenol_Unattached_DW_Bayramoglu(i)*So_Phenol_DW_200(i)/(Km_HP_phenol_Unattached_DW_Bayramoglu(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_HP_phenol_Unattached_DW_Bayramoglu(i)=activity_HP_phenol_Unattached_DW_Bayramoglu(i)/Km_HP_phenol_Unattached_DW_Bayramoglu(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Horseradish Peroxidase (HP) from Bayramoglu 2007 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_HP_phenol_Attached_DW_Bayramoglu=zeros(n:1);
Vmax_HP_phenol_Attached_DW_Bayramoglu=lhsu(119.34,145.86,200); %+/- 10% from 178.6
Km_HP_phenol_Attached_DW_Bayramoglu=lhsu(22.77,27.83,200); %+/- 10% from 240


% Code assumes all variables are uncertain
for i=1:n
    activity_HP_phenol_Attached_DW_Bayramoglu(i)=(Vmax_HP_phenol_Attached_DW_Bayramoglu(i)*So_Phenol_DW_200(i)/(Km_HP_phenol_Attached_DW_Bayramoglu(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_HP_phenol_attached_DW_Bayramoglu(i)=activity_HP_phenol_Attached_DW_Bayramoglu(i)/Km_HP_phenol_Attached_DW_Bayramoglu(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Horseradish Peroxidase (HP) from Zhang 2011 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_HP_phenol_Unattached_DW_Zhang=zeros(n:1);
Vmax_HP_phenol_Unattached_DW_Zhang=lhsu(27000.6048,33000.7392,200); %+/- 10% from original value of 504.9
Km_HP_phenol_Unattached_DW_Zhang=lhsu(5616,6864,200); %+/- 10% from original value of 180


% Code assumes all variables are uncertain
for i=1:n
    activity_HP_phenol_Unattached_DW_Zhang(i)=(Vmax_HP_phenol_Unattached_DW_Zhang(i)*So_Phenol_DW_200(i)/(Km_HP_phenol_Unattached_DW_Zhang(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_HP_phenol_Unattached_DW_Zhang(i)=activity_HP_phenol_Unattached_DW_Zhang(i)/Km_HP_phenol_Unattached_DW_Zhang(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached (Spheres) Horseradish Peroxidase (HP) from Zhang 2011 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_HP_phenol_Attached_Spheres_DW_Zhang=zeros(n:1);
Vmax_HP_phenol_Attached_Spheres_DW_Zhang=lhsu(971.2872,1187.1288,200); %+/- 10% from 178.6
Km_HP_phenol_Attached_Spheres_DW_Zhang=lhsu(20754,25366,200); %+/- 10% from 240


% Code assumes all variables are uncertain
for i=1:n
    activity_HP_phenol_Attached_Spheres_DW_Zhang(i)=(Vmax_HP_phenol_Attached_Spheres_DW_Zhang(i)*So_Phenol_DW_200(i)/(Km_HP_phenol_Attached_Spheres_DW_Zhang(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_HP_phenol_attached_Spheres_DW_Zhang(i)=activity_HP_phenol_Attached_Spheres_DW_Zhang(i)/Km_HP_phenol_Attached_Spheres_DW_Zhang(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached (Nanodisk) Horseradish Peroxidase (HP) from Zhang 2011 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_HP_phenol_Attached_Nanodisk_DW_Zhang=zeros(n:1);
Vmax_HP_phenol_Attached_Nanodisk_DW_Zhang=lhsu(232.497,284.163,200); %+/- 10% from 178.6
Km_HP_phenol_Attached_Nanodisk_DW_Zhang=lhsu(3555,4345,200); %+/- 10% from 240


% Code assumes all variables are uncertain
for i=1:n
    activity_HP_phenol_Attached_Nanodisk_DW_Zhang(i)=(Vmax_HP_phenol_Attached_Nanodisk_DW_Zhang(i)*So_Phenol_DW_200(i)/(Km_HP_phenol_Attached_Nanodisk_DW_Zhang(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_HP_phenol_attached_nanodisk_DW_Zhang(i)=activity_HP_phenol_Attached_Nanodisk_DW_Zhang(i)/Km_HP_phenol_Attached_Nanodisk_DW_Zhang(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached (Nanomultipods) Horseradish Peroxidase (HP) from Zhang 2011 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_HP_phenol_Attached_Nanomultipod_DW_Zhang=zeros(n:1);
Vmax_HP_phenol_Attached_Nanomultipod_DW_Zhang=lhsu(167.2704,204.4416,200); %+/- 10% from 178.6
Km_HP_phenol_Attached_Nanomultipod_DW_Zhang=lhsu(2178,2662,200); %+/- 10% from 240


% Code assumes all variables are uncertain
for i=1:n
    activity_HP_phenol_Attached_Nanomultipod_DW_Zhang(i)=(Vmax_HP_phenol_Attached_Nanomultipod_DW_Zhang(i)*So_Phenol_DW_200(i)/(Km_HP_phenol_Attached_Nanomultipod_DW_Zhang(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_HP_phenol_attached_Nanomultipod_DW_Zhang(i)=activity_HP_phenol_Attached_Nanomultipod_DW_Zhang(i)/Km_HP_phenol_Attached_Nanomultipod_DW_Zhang(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Horseradish Peroxidase (HP) from Vineh 2018 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_HP_phenol_Unattached_DW_Vineh=zeros(n:1);
Vmax_HP_phenol_Unattached_DW_Vineh=latin_hs(27300,900,200,1); 
Km_HP_phenol_Unattached_DW_Vineh=latin_hs(270,20,200,1); 


% Code assumes all variables are uncertain
for i=1:n
    activity_HP_phenol_Unattached_DW_Vineh(i)=(Vmax_HP_phenol_Unattached_DW_Vineh(i)*So_Phenol_DW_200(i)/(Km_HP_phenol_Unattached_DW_Vineh(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_HP_phenol_Unattached_DW_Vineh(i)=activity_HP_phenol_Unattached_DW_Vineh(i)/Km_HP_phenol_Unattached_DW_Vineh(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Horseradish Peroxidase (HP) from Vineh 2018 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_HP_phenol_Attached_DW_Vineh=zeros(n:1);
Vmax_HP_phenol_Attached_DW_Vineh=latin_hs(185700,3180,200,1); 
Km_HP_phenol_Attached_DW_Vineh=latin_hs(220,20,200,1); 


% Code assumes all variables are uncertain
for i=1:n
    activity_HP_phenol_Attached_DW_Vineh(i)=(Vmax_HP_phenol_Attached_DW_Vineh(i)*So_Phenol_DW_200(i)/(Km_HP_phenol_Attached_DW_Vineh(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_HP_phenol_attached_DW_Vineh(i)=activity_HP_phenol_Attached_DW_Vineh(i)/Km_HP_phenol_Attached_DW_Vineh(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Tyrosinase from Dincer 2012 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020

%initialize variables

n = 200;

activity_Tyrosinase_phenol_Unattached_DW_Dincer=zeros(n:1);
Vmax_Tyrosinase_phenol_Unattached_DW_Dincer=lhsu(952225668.87,116383139.7,200); %+/- 10% from original value of 504.9
Km_Tyrosinase_phenol_Unattached_DW_Dincer=lhsu(837,1023,200); %+/- 10% from original value of 180


% Code assumes all variables are uncertain
for i=1:n
    activity_Tyrosinase_phenol_Unattached_DW_Dincer(i)=(Vmax_Tyrosinase_phenol_Unattached_DW_Dincer(i)*So_Phenol_DW_200(i)/(Km_Tyrosinase_phenol_Unattached_DW_Dincer(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_Tyrosinase_phenol_Unattached_DW_Dincer(i)=activity_Tyrosinase_phenol_Unattached_DW_Dincer(i)/Km_Tyrosinase_phenol_Unattached_DW_Dincer(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Attached Tyrosinase from Dincer 2012 paper looking at DWTP Influent values for phenol
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_Tyrosinase_phenol_Attached_DW_Dincer=zeros(n:1);
Vmax_Tyrosinase_phenol_Attached_DW_Dincer=lhsu(67104738.36,82016902.44,200); %+/- 10% from 178.6
Km_Tyrosinase_phenol_Attached_DW_Dincer=lhsu(1530,1870,200); %+/- 10% from 240


% Code assumes all variables are uncertain
for i=1:n
    activity_Tyrosinase_phenol_Attached_DW_Dincer(i)=(Vmax_Tyrosinase_phenol_Attached_DW_Dincer(i)*So_Phenol_DW_200(i)/(Km_Tyrosinase_phenol_Attached_DW_Dincer(i)+So_Phenol_DW_200(i)));
catalytic_efficiency_Tyrosinase_phenol_attached_DW_Dincer(i)=activity_Tyrosinase_phenol_Attached_DW_Dincer(i)/Km_Tyrosinase_phenol_Attached_DW_Dincer(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% 1-Chlorobutane

% Unattached Haloalkane dehalogenase (DbjA) from Koudelakova 2011 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 19, 2020


%initialize variables

n = 200;

activity_DbjA_1CB_Unattached_DW_Koudelakvoa=zeros(n:1);
Vmax_DbjA_1CB_Unattached_DW_Koudelakvoa=latin_hs(10.2,24.9,200,1); 
Km__DbjA_1CB_Unattached_DW_Koudelakvoa=latin_hs(4020,1830,200,1); 


% Code assumes all variables are uncertain
for i=1:n
    activity_DbjA_1CB_Unattached_DW_Koudelakvoa(i)=(Vmax_DbjA_1CB_Unattached_DW_Koudelakvoa(i)*So_1CB_DW_200(i)/(Km__DbjA_1CB_Unattached_DW_Koudelakvoa(i)+So_1CB_DW_200(i)));
catalytic_efficiency_DbjA_1CB_Unattached_DW_Koudelakvoa(i)=activity_DbjA_1CB_Unattached_DW_Koudelakvoa(i)/Km__DbjA_1CB_Unattached_DW_Koudelakvoa(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');


% Unattached Haloalkane dehalogenase (DhaA) from Schindler 1999 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_DhaA_1CB_Unattached_DW_Schindler=zeros(n:1);
Vmax_DhaA_1CB_Unattached_DW_Schindler=lhsu(46.44,56.76,200); %+/- 10% from 51.6
Km__DhaA_1CB_Unattached_DW_Schindler=lhsu(360,440,200); %+/- 10% from 400


% Code assumes all variables are uncertain
for i=1:n
    activity_DhaA_1CB_Unattached_DW_Schindler(i)=(Vmax_DhaA_1CB_Unattached_DW_Schindler(i)*So_1CB_DW_200(i)/(Km__DhaA_1CB_Unattached_DW_Schindler(i)+So_1CB_DW_200(i)));
catalytic_efficiency_DhaA_1CB_Unattached_DW_Schindler(i)=activity_DhaA_1CB_Unattached_DW_Schindler(i)/Km__DhaA_1CB_Unattached_DW_Schindler(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DhlA) from Schanstra 1996 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_DhlA_1CB_Unattached_DW_Schanstra=zeros(n:1);
Vmax_DhlA_1CB_Unattached_DW_Schanstra=lhsu(81,99,200); %+/- 10% from 51.6
Km__DhlA_1CB_Unattached_DW_Schanstra=lhsu(1.98,2.42,200); %+/- 10% from 400


% Code assumes all variables are uncertain
for i=1:n
    activity_DhlA_1CB_Unattached_DW_Schanstra(i)=(Vmax_DhlA_1CB_Unattached_DW_Schanstra(i)*So_1CB_DW_200(i)/(Km__DhlA_1CB_Unattached_DW_Schanstra(i)+So_1CB_DW_200(i)));
catalytic_efficiency_DhlA_1CB_Unattached_DW_Schanstra(i)=activity_DhlA_1CB_Unattached_DW_Schanstra(i)/Km__DhlA_1CB_Unattached_DW_Schanstra(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DmbA) from Koudelakova 2011 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_DmbA_1CB_Unattached_DW_Koudelakvoa=zeros(n:1);
Vmax_DmbA_1CB_Unattached_DW_Koudelakvoa=latin_hs(36,2.88,200,1);
Km__DmbA_1CB_Unattached_DW_Koudelakvoa=latin_hs(1560,359,200,1); 


% Code assumes all variables are uncertain
for i=1:n
    activity_DmbA_1CB_Unattached_DW_Koudelakvoa(i)=(Vmax_DmbA_1CB_Unattached_DW_Koudelakvoa(i)*So_1CB_DW_200(i)/(Km__DmbA_1CB_Unattached_DW_Koudelakvoa(i)+So_1CB_DW_200(i)));
catalytic_efficiency_DmbA_1CB_Unattached_DW_Koudelakvoa(i)=activity_DmbA_1CB_Unattached_DW_Koudelakvoa(i)/Km__DmbA_1CB_Unattached_DW_Koudelakvoa(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (LinB) from Hynkova 1999 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_LinB_1CB_Unattached_DW_Hynkova=zeros(n:1);
Vmax_LinB_1CB_Unattached_DW_Hynkova=latin_hs(58.80,1.68,200,1); 
Km__LinB_1CB_Unattached_DW_Hynkova=latin_hs(140,7,200,1); 


% Code assumes all variables are uncertain
for i=1:n
    activity_LinB_1CB_Unattached_DW_Hynkova(i)=(Vmax_LinB_1CB_Unattached_DW_Hynkova(i)*So_1CB_DW_200(i)/(Km__LinB_1CB_Unattached_DW_Hynkova(i)+So_1CB_DW_200(i)));
catalytic_efficiency_LinB_1CB_Unattached_DW_Hynkova(i)=activity_LinB_1CB_Unattached_DW_Hynkova(i)/Km__LinB_1CB_Unattached_DW_Hynkova(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (LinB_D108N) from Hynkova 1999 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_LinB_D108N_1CB_Unattached_DW_Hynkova=zeros(n:1);
Vmax_LinB_D108N_1CB_Unattached_DW_Hynkova=latin_hs(25.8,0.6,200,1); 
Km_LinB_D108N_1CB_Unattached_DW_Hynkova=latin_hs(300,17,200,1); 

% Code assumes all variables are uncertain
for i=1:n
    activity_LinB_D108N_1CB_Unattached_DW_Hynkova(i)=(Vmax_LinB_D108N_1CB_Unattached_DW_Hynkova(i)*So_1CB_DW_200(i)/(Km_LinB_D108N_1CB_Unattached_DW_Hynkova(i)+So_1CB_DW_200(i)));
catalytic_efficiency_LinB_D108N_1CB_Unattached_DW_Hynkova(i)=activity_LinB_D108N_1CB_Unattached_DW_Hynkova(i)/Km_LinB_D108N_1CB_Unattached_DW_Hynkova(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (LinB_E244Q) from Hynkova 1999 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_LinB_E244Q_1CB_Unattached_DW_Hynkova=zeros(n:1);
Vmax_LinB_E244Q_1CB_Unattached_DW_Hynkova=latin_hs(21,0.66,200,1); 
Km_LinB_E244Q_1CB_Unattached_DW_Hynkova=latin_hs(320,22,200,1); 


% Code assumes all variables are uncertain
for i=1:n
    activity_LinB_E244Q_1CB_Unattached_DW_Hynkova(i)=(Vmax_LinB_E244Q_1CB_Unattached_DW_Hynkova(i)*So_1CB_DW_200(i)/(Km_LinB_E244Q_1CB_Unattached_DW_Hynkova(i)+So_1CB_DW_200(i)));
catalytic_efficiency_LinB_E244Q_1CB_Unattached_DW_Hynkova(i)=activity_LinB_E244Q_1CB_Unattached_DW_Hynkova(i)/Km_LinB_E244Q_1CB_Unattached_DW_Hynkova(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (XaDHL) from Schindler 1999 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_XaDHL_1CB_Unattached_DW_Schindler=zeros(n:1);
Vmax_XaDHL_1CB_Unattached_DW_Schindler=lhsu(8.1,9.9,200); %+/- 10% from 9
Km_XaDHL_1CB_Unattached_DW_Schindler=lhsu(3690,4510,200); %+/- 10% from 4100


% Code assumes all variables are uncertain
for i=1:n
    activity_XaDHL_1CB_Unattached_DW_Schindler(i)=(Vmax_XaDHL_1CB_Unattached_DW_Schindler(i)*So_1CB_DW_200(i)/(Km_XaDHL_1CB_Unattached_DW_Schindler(i)+So_1CB_DW_200(i)));
catalytic_efficiency_XaDHL_1CB_Unattached_DW_Schindler(i)=activity_XaDHL_1CB_Unattached_DW_Schindler(i)/Km_XaDHL_1CB_Unattached_DW_Schindler(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (RrDHL) from Schindler 1999 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_RrDHL_1CB_Unattached_DW_Schindler=zeros(n:1);
Vmax_RrDHL_1CB_Unattached_DW_Schindler=lhsu(46.44,56.76,200); %+/- 10% from 51.60
Km_RrDHL_1CB_Unattached_DW_Schindler=lhsu(3600,4400,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_RrDHL_1CB_Unattached_DW_Schindler(i)=(Vmax_RrDHL_1CB_Unattached_DW_Schindler(i)*So_1CB_DW_200(i)/(Km_RrDHL_1CB_Unattached_DW_Schindler(i)+So_1CB_DW_200(i)));
catalytic_efficiency_RrDHL_1CB_Unattached_DW_Schindler(i)=activity_RrDHL_1CB_Unattached_DW_Schindler(i)/Km_RrDHL_1CB_Unattached_DW_Schindler(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DmmA) from Buryska 2017 paper
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_DmmA_1CB_Unattached_DW_Buryska=zeros(n:1);
Vmax_DmmA_1CB_Unattached_DW_Buryska=latin_hs(10.2,1.2,200,1);
Km_DmmA_1CB_Unattached_DW_Buryska=latin_hs(380,70,200,1); 

% Code assumes all variables are uncertain
for i=1:n
    activity_DmmA_1CB_Unattached_DW_Buryska(i)=(Vmax_DmmA_1CB_Unattached_DW_Buryska(i)*So_1CB_DW_200(i)/(Km_DmmA_1CB_Unattached_DW_Buryska(i)+So_1CB_DW_200(i)));
catalytic_efficiency_DmmA_1CB_Unattached_DW_Buryska(i)=activity_DmmA_1CB_Unattached_DW_Buryska(i)/Km_DmmA_1CB_Unattached_DW_Buryska(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DbjA) from Sato 2005 paper
% His Tagged Protein
% looking at DWTP Influent values for 1-Chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 27, 2020


%initialize variables

n = 200;

activity_DbjA_1CB_Unattached_DW_Sato=zeros(n:1);
Vmax_DbjA_1CB_Unattached_DW_Sato=latin_hs(84,25.2,200,1); 
Km_DbjA_1CB_Unattached_DW_Sato=latin_hs(4000,1800,200,1); 


% Code assumes all variables are uncertain
for i=1:n
    activity_DbjA_1CB_Unattached_DW_Sato(i)=(Vmax_DbjA_1CB_Unattached_DW_Sato(i)*So_1CB_DW_200(i)/(Km_DbjA_1CB_Unattached_DW_Sato(i)+So_1CB_DW_200(i)));
catalytic_efficiency_DbjA_1CB_Unattached_DW_Sato(i)=activity_DbjA_1CB_Unattached_DW_Sato(i)/Km_DbjA_1CB_Unattached_DW_Sato(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% 1,2-Dichloroethane

% Unattached Haloalkane dehalogenase (XaDHL) from Schindler 1999 paper
% looking at DWTP Influent values for 1,2-dichloroethane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 28, 2020


%initialize variables

n = 200;

activity_XaDHL_12CB_Unattached_DW_Schindler=zeros(n:1);
Vmax_XaDHL_12CB_Unattached_DW_Schindler=lhsu(118.8,145.2,200); %+/- 10% from 51.60
Km_XaDHL_12CB_Unattached_DW_Schindler=lhsu(333,407,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_XaDHL_12CB_Unattached_DW_Schindler(i)=(Vmax_XaDHL_12CB_Unattached_DW_Schindler(i)*So_DCEthane_DW_200(i)/(Km_XaDHL_12CB_Unattached_DW_Schindler(i)+So_DCEthane_DW_200(i)));
catalytic_efficiency_XaDHL_12CB_Unattached_DW_Schindler(i)=activity_XaDHL_12CB_Unattached_DW_Schindler(i)/Km_XaDHL_12CB_Unattached_DW_Schindler(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DmmA) from Keuning 1985 paper
% looking at DWTP Influent values for 1,2-dichloroethane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 28, 2020


%initialize variables

n = 200;

activity_DmmA_12CB_Unattached_DW_Keuning=zeros(n:1);
Vmax_DmmA_12CB_Unattached_DW_Keuning=lhsu(324000,396000,200); %+/- 10% from 51.60
Km_DmmA_12CB_Unattached_DW_Keuning=lhsu(990,1210,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_DmmA_12CB_Unattached_DW_Keuning(i)=(Vmax_DmmA_12CB_Unattached_DW_Keuning(i)*So_DCEthane_DW_200(i)/(Km_DmmA_12CB_Unattached_DW_Keuning(i)+So_DCEthane_DW_200(i)));
catalytic_efficiency_DmmA_12CB_Unattached_DW_Keuning(i)=activity_DmmA_12CB_Unattached_DW_Keuning(i)/Km_DmmA_12CB_Unattached_DW_Keuning(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DhlA) from Schanstra 1996 paper
% looking at DWTP Influent values for 1,2-dichloroethane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 28, 2020


%initialize variables

n = 200;

activity_DhlA_12CB_Unattached_DW_Schanstra=zeros(n:1);
Vmax_DhlA_12CB_Unattached_DW_Schanstra=lhsu(178.2,217.8,200); %+/- 10% from 51.60
Km_DhlA_12CB_Unattached_DW_Schanstra=lhsu(477,583,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_DhlA_12CB_Unattached_DW_Schanstra(i)=(Vmax_DhlA_12CB_Unattached_DW_Schanstra(i)*So_DCEthane_DW_200(i)/(Km_DhlA_12CB_Unattached_DW_Schanstra(i)+So_DCEthane_DW_200(i)));
catalytic_efficiency_DhlA_12CB_Unattached_DW_Schanstra(i)=activity_DhlA_12CB_Unattached_DW_Schanstra(i)/Km_DhlA_12CB_Unattached_DW_Schanstra(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% 1,2,3 Trichloropropane

% Unattached Haloalkane dehalogenase (DhaA) from Bosma 1999 paper
% looking at DWTP Influent values for 1,2,3-trichloropropane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020


%initialize variables

n = 200;

activity_DhaA_TCP_Unattached_DW_Bosma=zeros(n:1);
Vmax_DhaA_TCP_Unattached_DW_Bosma=lhsu(4.32,5.28,200); %+/- 10% from 51.60
Km_DhaA_TCP_Unattached_DW_Bosma=lhsu(1980,2420,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_DhaA_TCP_Unattached_DW_Bosma(i)=(Vmax_DhaA_TCP_Unattached_DW_Bosma(i)*So_TCP_DW_200(i)/(Km_DhaA_TCP_Unattached_DW_Bosma(i)+So_TCP_DW_200(i)));
catalytic_efficiency_DhaA_TCP_Unattached_DW_Bosma(i)=activity_DhaA_TCP_Unattached_DW_Bosma(i)/Km_DhaA_TCP_Unattached_DW_Bosma(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (Dha) from Samin 2014 paper
% looking at DWTP Influent values for 1,2,3-trichloropropane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020


%initialize variables

n = 200;

activity_Dha_TCP_Unattached_DW_Samin=zeros(n:1);
Vmax_Dha_TCP_Unattached_DW_Samin=lhsu(70.2,85.8,200); %+/- 10% from 51.60
Km_Dha_TCP_Unattached_DW_Samin=lhsu(1114.2857,1361.9048,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_Dha_TCP_Unattached_DW_Samin(i)=(Vmax_Dha_TCP_Unattached_DW_Samin(i)*So_TCP_DW_200(i)/(Km_Dha_TCP_Unattached_DW_Samin(i)+So_TCP_DW_200(i)));
catalytic_efficiency_Dha_TCP_Unattached_DW_Samin(i)=activity_Dha_TCP_Unattached_DW_Samin(i)/Km_Dha_TCP_Unattached_DW_Samin(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DbjA) from Sato 2005 paper
% looking at DWTP Influent values for 1,2,3-trichloropropane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020


%initialize variables

n = 200;

activity_DbjA_TCP_Unattached_DW_Sato=zeros(n:1);
Vmax_DbjA_TCP_Unattached_DW_Sato=latin_hs(14.4,1.2,200,1); %+/- 10% from 51.60
Km_DbjA_TCP_Unattached_DW_Sato=latin_hs(280,90,200,1); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_DbjA_TCP_Unattached_DW_Sato(i)=(Vmax_DbjA_TCP_Unattached_DW_Sato(i)*So_TCP_DW_200(i)/(Km_DbjA_TCP_Unattached_DW_Sato(i)+So_TCP_DW_200(i)));
catalytic_efficiency_DbjA_TCP_Unattached_DW_Sato(i)=activity_DbjA_TCP_Unattached_DW_Sato(i)/Km_DbjA_TCP_Unattached_DW_Sato(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% 2-Chlorobutane

% Unattached Haloalkane dehalogenase (RrDHL) from Schindler 1999 paper
% looking at DWTP Influent values for 2-chlorobutane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020

%initialize variables

n = 200;

activity_RrDHL_2CB_Unattached_DW_Schindler=zeros(n:1);
Vmax_RrDHL_2CB_Unattached_DW_Schindler=lhsu(17.28,21.12,200); %+/- 10% from 51.60
Km_RrDHL_2CB_Unattached_DW_Schindler=lhsu(8460,10340,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_RrDHL_2CB_Unattached_DW_Schindler(i)=(Vmax_RrDHL_2CB_Unattached_DW_Schindler(i)*So_Chlorobutane_DW_200(i)/(Km_RrDHL_2CB_Unattached_DW_Schindler(i)+So_Chlorobutane_DW_200(i)));
catalytic_efficiency_RrDHL_2CB_Unattached_DW_Schindler(i)=activity_RrDHL_2CB_Unattached_DW_Schindler(i)/Km_RrDHL_2CB_Unattached_DW_Schindler(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% 1,2-Dibromoethane

% Unattached Haloalkane dehalogenase (DhlA) from Schanstra 1996 paper
% looking at DWTP Influent values for 1,2 Dibromoethane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020

%initialize variables

n = 200;

activity_DhlA_DBE_Unattached_DW_Schanstra=zeros(n:1);
Vmax_DhlA_DBE_Unattached_DW_Schanstra=lhsu(162,198,200); %+/- 10% from 51.60
Km_DhlA_DBE_Unattached_DW_Schanstra=lhsu(90,110,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_DhlA_DBE_Unattached_DW_Schanstra(i)=(Vmax_DhlA_DBE_Unattached_DW_Schanstra(i)*So_Dibromoethane_DW_200(i)/(Km_DhlA_DBE_Unattached_DW_Schanstra(i)+So_Dibromoethane_DW_200(i)));
catalytic_efficiency_DhlA_DBE_Unattached_DW_Schanstra(i)=activity_DhlA_DBE_Unattached_DW_Schanstra(i)/Km_DhlA_DBE_Unattached_DW_Schanstra(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');


% Unattached Haloalkane dehalogenase (XaDhl) from Schindler 1999 paper
% looking at DWTP Influent values for 1,2 Dibromoethane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020

%initialize variables

n = 200;

activity_XaDhl_DBE_Unattached_DW_Schindler=zeros(n:1);
Vmax_XaDhl_DBE_Unattached_DW_Schindler=lhsu(118.8,145.2,200); %+/- 10% from 51.60
Km_XaDhl_DBE_Unattached_DW_Schindler=lhsu(9,11,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_XaDhl_DBE_Unattached_DW_Schindler(i)=(Vmax_XaDhl_DBE_Unattached_DW_Schindler(i)*So_Dibromoethane_DW_200(i)/(Km_XaDhl_DBE_Unattached_DW_Schindler(i)+So_Dibromoethane_DW_200(i)));
catalytic_efficiency_XaDhl_DBE_Unattached_DW_Schindler(i)=activity_XaDhl_DBE_Unattached_DW_Schindler(i)/Km_XaDhl_DBE_Unattached_DW_Schindler(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (RrDHL) from Schindler 1999 paper
% looking at DWTP Influent values for 1,2 Dibromoethane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020

%initialize variables

n = 200;

activity_RrDhl_DBE_Unattached_DW_Schindler=zeros(n:1);
Vmax_RrDhl_DBE_Unattached_DW_Schindler=lhsu(334.8,409.2,200); %+/- 10% from 51.60
Km_RrDhl_DBE_Unattached_DW_Schindler=lhsu(1080,1320,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_RrDhl_DBE_Unattached_DW_Schindler(i)=(Vmax_RrDhl_DBE_Unattached_DW_Schindler(i)*So_Dibromoethane_DW_200(i)/(Km_RrDhl_DBE_Unattached_DW_Schindler(i)+So_Dibromoethane_DW_200(i)));
catalytic_efficiency_RrDhl_DBE_Unattached_DW_Schindler(i)=activity_RrDhl_DBE_Unattached_DW_Schindler(i)/Km_RrDhl_DBE_Unattached_DW_Schindler(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DppA) from Hesseler 1999 paper
% looking at DWTP Influent values for 1,2 Dibromoethane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020

%initialize variables

n = 200;

activity_DppA_DBE_Unattached_DW_Hesseler=zeros(n:1);
Vmax_DppA_DBE_Unattached_DW_Hesseler=lhsu(20.52,25.08,200); %+/- 10% from 51.60
Km_DppA_DBE_Unattached_DW_Hesseler=lhsu(1413,1727,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_DppA_DBE_Unattached_DW_Hesseler(i)=(Vmax_DppA_DBE_Unattached_DW_Hesseler(i)*So_Dibromoethane_DW_200(i)/(Km_DppA_DBE_Unattached_DW_Hesseler(i)+So_Dibromoethane_DW_200(i)));
catalytic_efficiency_DppA_DBE_Unattached_DW_Hesseler(i)=activity_DppA_DBE_Unattached_DW_Hesseler(i)/Km_DppA_DBE_Unattached_DW_Hesseler(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DhaA) from Bosma 1999 paper
% looking at DWTP Influent values for 1,2 Dibromoethane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020

%initialize variables

n = 200;

activity_DhaA_DBE_Unattached_DW_Bosma=zeros(n:1);
Vmax_DhaA_DBE_Unattached_DW_Bosma=lhsu(772.2,943.8,200); %+/- 10% from 51.60
Km_DhaA_DBE_Unattached_DW_Bosma=lhsu(3510,4290,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_DhaA_DBE_Unattached_DW_Bosma(i)=(Vmax_DhaA_DBE_Unattached_DW_Bosma(i)*So_Dibromoethane_DW_200(i)/(Km_DhaA_DBE_Unattached_DW_Bosma(i)+So_Dibromoethane_DW_200(i)));
catalytic_efficiency_DhaA_DBE_Unattached_DW_Bosma(i)=activity_DhaA_DBE_Unattached_DW_Bosma(i)/Km_DhaA_DBE_Unattached_DW_Bosma(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Haloalkane dehalogenase (DmmA) from Buryska 2017 paper
% looking at DWTP Influent values for 1,2 Dibromoethane
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on August 31, 2020

%initialize variables

n = 200;

activity_DmmA_DBE_Unattached_DW_Buryska=zeros(n:1);
Vmax_DmmA_DBE_Unattached_DW_Buryska=latin_hs(108,24,200,1); %+/- 10% from 51.60
Km_DmmA_DBE_Unattached_DW_Buryska=latin_hs(2300,300,200,1); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_DmmA_DBE_Unattached_DW_Buryska(i)=(Vmax_DmmA_DBE_Unattached_DW_Buryska(i)*So_Dibromoethane_DW_200(i)/(Km_DmmA_DBE_Unattached_DW_Buryska(i)+So_Dibromoethane_DW_200(i)));
catalytic_efficiency_DmmA_DBE_Unattached_DW_Buryska(i)=activity_DmmA_DBE_Unattached_DW_Buryska(i)/Km_DmmA_DBE_Unattached_DW_Buryska(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');



%% PCE

% Unattached PceA Sulfurospirillum multivorans DSM 12446
% looking at DWTP Influent values for PCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_PceA_PCE_Unattached_DW_Neumann=zeros(n:1);
Vmax_PceA_PCE_Unattached_DW_Neumann=lhsu(8118.84,9048,200); %+/- 10% from 51.60
Km_PceA_PCE_Unattached_DW_Neumann=lhsu(152,200,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_PceA_PCE_Unattached_DW_Neumann(i)=(Vmax_PceA_PCE_Unattached_DW_Neumann(i)*So_PCE_DW_200(i)/(Km_PceA_PCE_Unattached_DW_Neumann(i)+So_PCE_DW_200(i)));
catalytic_efficiency_PceA_PCE_Unattached_DW_Neumann(i)=activity_PceA_PCE_Unattached_DW_Neumann(i)/Km_PceA_PCE_Unattached_DW_Neumann(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Tce Miller 1998
% looking at DWTP Influent values for PCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_Tce_PCE_Unattached_DW_Miller=zeros(n:1);
Vmax_Tce_PCE_Unattached_DW_Miller=lhsu(401.7,2535,200); %+/- 10% from 51.60
Km_Tce_PCE_Unattached_DW_Miller=lhsu(9,11,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_Tce_PCE_Unattached_DW_Miller(i)=(Vmax_Tce_PCE_Unattached_DW_Miller(i)*So_PCE_DW_200(i)/(Km_Tce_PCE_Unattached_DW_Miller(i)+So_PCE_DW_200(i)));
catalytic_efficiency_Tce_PCE_Unattached_DW_Miller(i)=activity_Tce_PCE_Unattached_DW_Miller(i)/Km_Tce_PCE_Unattached_DW_Miller(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached PceA Maillard 2003
% looking at DWTP Influent values for PCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_PceA_PCE_Unattached_DW_Maillard=zeros(n:1);
Vmax_PceA_PCE_Unattached_DW_Maillard=lhsu(401.7,2535,200); %+/- 10% from 51.60
Km_PceA_PCE_Unattached_DW_Maillard=lhsu(9,11,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_PceA_PCE_Unattached_DW_Maillard(i)=(Vmax_PceA_PCE_Unattached_DW_Maillard(i)*So_PCE_DW_200(i)/(Km_PceA_PCE_Unattached_DW_Maillard(i)+So_PCE_DW_200(i)));
catalytic_efficiency_PceA_PCE_Unattached_DW_Maillard(i)=activity_PceA_PCE_Unattached_DW_Maillard(i)/Km_PceA_PCE_Unattached_DW_Maillard(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached PceA Maillard 2003
% looking at DWTP Influent values for PCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_PceA_PCE_Unattached_DW_Maillard=zeros(n:1);
Vmax_PceA_PCE_Unattached_DW_Maillard=latin_hs(900,47.7,200,1); %+/- 10% from 51.60
Km_PceA_PCE_Unattached_DW_Maillard=latin_hs(20.4,3.2,200,1); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_PceA_PCE_Unattached_DW_Maillard(i)=(Vmax_PceA_PCE_Unattached_DW_Maillard(i)*So_PCE_DW_200(i)/(Km_PceA_PCE_Unattached_DW_Maillard(i)+So_PCE_DW_200(i)));
catalytic_efficiency_PceA_PCE_Unattached_DW_Maillard(i)=activity_PceA_PCE_Unattached_DW_Maillard(i)/Km_PceA_PCE_Unattached_DW_Maillard(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');


% Unattached PceA Suyama 2002
% looking at DWTP Influent values for PCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_PceA_PCE_Unattached_DW_Suyama=zeros(n:1);
Vmax_PceA_PCE_Unattached_DW_Suyama=lhsu(5.92992,7.24768,200); %+/- 10% from 51.60
Km_PceA_PCE_Unattached_DW_Suyama=lhsu(95.13,116.27,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_PceA_PCE_Unattached_DW_Suyama(i)=(Vmax_PceA_PCE_Unattached_DW_Suyama(i)*So_PCE_DW_200(i)/(Km_PceA_PCE_Unattached_DW_Suyama(i)+So_PCE_DW_200(i)));
catalytic_efficiency_PceA_PCE_Unattached_DW_Suyama(i)=activity_PceA_PCE_Unattached_DW_Suyama(i)/Km_PceA_PCE_Unattached_DW_Suyama(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached PceA Chang 2001
% looking at DWTP Influent values for PCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_PceA_PCE_Unattached_DW_Chang=zeros(n:1);
Vmax_PceA_PCE_Unattached_DW_Chang=lhsu(0.005075,0.0055825,200); %+/- 10% from 51.60
Km_PceA_PCE_Unattached_DW_Chang=lhsu(6.183,7.557,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_PceA_PCE_Unattached_DW_Chang(i)=(Vmax_PceA_PCE_Unattached_DW_Chang(i)*So_PCE_DW_200(i)/(Km_PceA_PCE_Unattached_DW_Chang(i)+So_PCE_DW_200(i)));
catalytic_efficiency_PceA_PCE_Unattached_DW_Chang(i)=activity_PceA_PCE_Unattached_DW_Chang(i)/Km_PceA_PCE_Unattached_DW_Chang(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached PceA Lohner 2013
% looking at DWTP Influent values for PCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_PceA_PCE_Unattached_DW_Lohner=zeros(n:1);
Vmax_PceA_PCE_Unattached_DW_Lohner=lhsu(0.0009,0.0011,200); %+/- 10% from 51.60
Km_PceA_PCE_Unattached_DW_Lohner=lhsu(108,132,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_PceA_PCE_Unattached_DW_Lohner(i)=(Vmax_PceA_PCE_Unattached_DW_Lohner(i)*So_PCE_DW_200(i)/(Km_PceA_PCE_Unattached_DW_Lohner(i)+So_PCE_DW_200(i)));
catalytic_efficiency_PceA_PCE_Unattached_DW_Lohner(i)=activity_PceA_PCE_Unattached_DW_Lohner(i)/Km_PceA_PCE_Unattached_DW_Lohner(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% TCE

% Unattached Carbon Monoxide Dehydrogenase (CMD) Complex  Jablonski 1992
% looking at DWTP Influent values for TCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_CMD_TCE_Unattached_DW_Jablonski=zeros(n:1);
Vmax_CMD_TCE_Unattached_DW_Jablonski=latin_hs(26200,1700,200,1); %+/- 10% from 51.60
Km_CMD_TCE_Unattached_DW_Jablonski=latin_hs(1700,300,200,1); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_CMD_TCE_Unattached_DW_Jablonski(i)=(Vmax_CMD_TCE_Unattached_DW_Jablonski(i)*So_TCE_DW_200(i)/(Km_CMD_TCE_Unattached_DW_Jablonski(i)+So_TCE_DW_200(i)));
catalytic_efficiency_CMD_TCE_Unattached_DW_Jablonski(i)=activity_CMD_TCE_Unattached_DW_Jablonski(i)/Km_CMD_TCE_Unattached_DW_Jablonski(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Carbon Monoxide Dehydrogenase (CMD) Complex with Titanium III Citrate Jablonski 1992
% looking at DWTP Influent values for TCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_CMD_TI_TCE_Unattached_DW_Jablonski=zeros(n:1);
Vmax_CMD_TI_TCE_Unattached_DW_Jablonski=latin_hs(34900,3600,200,1); %+/- 10% from 51.60
Km_CMD_TI_TCE_Unattached_DW_Jablonski=latin_hs(1200,300,200,1); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_CMD_TI_TCE_Unattached_DW_Jablonski(i)=(Vmax_CMD_TI_TCE_Unattached_DW_Jablonski(i)*So_TCE_DW_200(i)/(Km_CMD_TI_TCE_Unattached_DW_Jablonski(i)+So_TCE_DW_200(i)));
catalytic_efficiency_CMD_TI_TCE_Unattached_DW_Jablonski(i)=activity_CMD_TI_TCE_Unattached_DW_Jablonski(i)/Km_CMD_TI_TCE_Unattached_DW_Jablonski(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached Tce Miller 1998
% looking at DWTP Influent values for TCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_Tce_TCE_Unattached_DW_Miller=zeros(n:1);
Vmax_Tce_TCE_Unattached_DW_Miller=lhsu(2421.9,2960.1,200); %+/- 10% from 51.60
Km_Tce_TCE_Unattached_DW_Miller=lhsu(3.6,4.4,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_Tce_TCE_Unattached_DW_Miller(i)=(Vmax_Tce_TCE_Unattached_DW_Miller(i)*So_TCE_DW_200(i)/(Km_Tce_TCE_Unattached_DW_Miller(i)+So_TCE_DW_200(i)));
catalytic_efficiency_Tce_TCE_Unattached_DW_Miller(i)=activity_Tce_TCE_Unattached_DW_Miller(i)/Km_Tce_TCE_Unattached_DW_Miller(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached PcrA Maillard 2003
% looking at DWTP Influent values for TCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_PceA_TCE_Unattached_DW_Maillard=zeros(n:1);
Vmax_PceA_TCE_Unattached_DW_Maillard=latin_hs(1338,770.96,200,1); %+/- 10% from 51.60
Km_PceA_TCE_Unattached_DW_Maillard=latin_hs(23.7,5.2,200,1); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_PceA_TCE_Unattached_DW_Maillard(i)=(Vmax_PceA_TCE_Unattached_DW_Maillard(i)*So_TCE_DW_200(i)/(Km_PceA_TCE_Unattached_DW_Maillard(i)+So_TCE_DW_200(i)));
catalytic_efficiency_PceA_TCE_Unattached_DW_Maillard(i)=activity_PceA_TCE_Unattached_DW_Maillard(i)/Km_PceA_TCE_Unattached_DW_Maillard(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

% Unattached PceA Suyama 2002
% looking at DWTP Influent values for TCE
% Data obtained from 'Kinetic Parameters fro Biocatalysts' on January 16th
% 2021

%initialize variables

n = 200;

activity_PceA_TCE_Unattached_DW_Suyama=zeros(n:1);
Vmax_PceA_TCE_Unattached_DW_Suyama=lhsu(5.929,7.248,200); %+/- 10% from 51.60
Km_PceA_TCE_Unattached_DW_Suyama=lhsu(481.77,588.83,200); %+/- 10% from 4000


% Code assumes all variables are uncertain
for i=1:n
    activity_PceA_TCE_Unattached_DW_Suyama(i)=(Vmax_PceA_TCE_Unattached_DW_Suyama(i)*So_TCE_DW_200(i)/(Km_PceA_TCE_Unattached_DW_Suyama(i)+So_TCE_DW_200(i)));
catalytic_efficiency_PceA_TCE_Unattached_DW_Suyama(i)=activity_PceA_TCE_Unattached_DW_Suyama(i)/Km_PceA_TCE_Unattached_DW_Suyama(i);
    
end

% [RHO,PVAL]=corr(activity',Vmax','Type','Spearman');
% [RHO2,PVAL2]=corr(activity',Km','Type','Spearman');
% [RHO3,PVAL3]=corr(activity_plus',So','Type','Spearman');

%% PLOTS

h17= scatter(So_PCE_DW_200',activity_PceA_PCE_Unattached_DW_Neumann',[],[0.976 0.561 0.376]); hold on;...
    scatter(So_PCE_DW_200',activity_Tce_PCE_Unattached_DW_Miller',[],[0.976 0.561 0.376]); hold on;...
    scatter(So_PCE_DW_200',activity_PceA_PCE_Unattached_DW_Maillard',[],[0.976 0.561 0.376]); hold on;...
    scatter(So_PCE_DW_200',activity_PceA_PCE_Unattached_DW_Suyama',[],[0.976 0.561 0.376]); hold on;...
    scatter(So_PCE_DW_200',activity_PceA_PCE_Unattached_DW_Chang',[],[0.976 0.561 0.376]); hold on;...
    scatter(So_PCE_DW_200',activity_PceA_PCE_Unattached_DW_Lohner',[],[0.976 0.561 0.376]); hold on;...

h18= scatter(So_TCE_DW_200',activity_CMD_TCE_Unattached_DW_Jablonski',[],[0.976 0.561 0.376],'+'); hold on;...
    scatter(So_TCE_DW_200',activity_CMD_TI_TCE_Unattached_DW_Jablonski',[],[0.976 0.561 0.376],'+'); hold on;...
    scatter(So_TCE_DW_200', activity_Tce_TCE_Unattached_DW_Miller',[],[0.976 0.561 0.376],'+'); hold on;...
    scatter(So_TCE_DW_200', activity_PceA_TCE_Unattached_DW_Maillard',[],[0.976 0.561 0.376],'+'); hold on;...
    scatter(So_TCE_DW_200', activity_PceA_TCE_Unattached_DW_Suyama',[],[0.976 0.561 0.376],'+'); hold on;...
    
h1= scatter(So_TeCBPA_DW_200',activity_laccase_TeCBPA_Attached_DW',[],[0.945,0.467,0.498]); hold on;...
scatter(So_TeCBPA_DW_200',activity_laccase_TeCBPA_Unattached_DW',[],[0.945,0.467,0.498]); hold on;...

h2 =scatter(So_STZ_WW_200',activity_laccase_STZ_Attached_WW_Rahmani',[],[0.475,.749,.510]); hold on;... 
scatter(So_STZ_WW_200',activity_laccase_STZ_Unattached_WW_Rahmani',[],[0.475,.749,.510]); hold on;...
scatter(So_STZ_DW_200',activity_laccase_STZ_Attached_DW_Rahmani',[],[0.475,.749,.510]); hold on;... 
scatter(So_STZ_DW_200',activity_laccase_STZ_Unattached_DW_Rahmani',[],[0.475,.749,.510]); hold on;...

h3 =scatter(So_SMZ_WW_200',activity_laccase_SMZ_Attached_WW',[],[0.475,.749,.510],'+'); hold on;... 
scatter(So_SMZ_WW_200',activity_laccase_SMZ_Unattached_WW',[],[0.475,.749,.510],'+'); hold on;...
scatter(So_SMZ_DW_200',activity_laccase_SMZ_Attached_DW',[],[0.475,.749,.510],'+'); hold on;... 
scatter(So_SMZ_DW_200',activity_laccase_SMZ_Unattached_DW',[],[0.475,.749,.510],'+'); hold on;...

h4 =scatter(So_perchlorate_DW_200',activity_Pcr_Perchlorate_Unattached_Coates',[],[0.376,0.757,0.812]); hold on;... 
scatter(So_perchlorate_DW_200',activity_Pcr_Perchlorate_Unattached_Hutchison',[],[0.376,0.757,0.812]); hold on;...
scatter(So_perchlorate_DW_200',activity_Pcr_Perchlorate_Unattached_Kengen',[],[0.376,0.757,0.812]); hold on;...

h6 =scatter(So_NP_WW_200',activity_laccase_NP_Attached_WW',[],[0.945,0.467,0.498],'d'); hold on;... 
scatter(So_NP_WW_200',activity_laccase_NP_Unattached_WW',[],[0.945,0.467,0.498],'d'); hold on;...
scatter(So_NP_DW_200',activity_laccase_NP_Attached_DW',[],[0.945,0.467,0.498],'d'); hold on;... 
scatter(So_NP_DW_200',activity_laccase_NP_Unattached_DW',[],[0.945,0.467,0.498],'d'); hold on;...
scatter(So_NP_WW_200',activity_HP_NP_Unattached_WW',[],[0.945,0.467,0.498],'d'); hold on;...
scatter(So_NP_DW_200',activity_HP_NP_Unattached_DW',[],[0.945,0.467,0.498],'d'); hold on;...
scatter(So_NP_WW_200',activity_LP_NP_Unattached_WW',[],[0.945,0.467,0.498],'d'); hold on;...
scatter(So_NP_DW_200',activity_LP_NP_Unattached_DW',[],[0.945,0.467,0.498],'d'); hold on;...

h7 =scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Ebihara',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Kostan_R173A',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Kostan_R173K',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Kostan_WT',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Maixner',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Mehboob',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Mlynek',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Mobilia_AoGR',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Mobilia_AoPS',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Mobilia_DaCld',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Mobilia_MbCld',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Mobilia_rID',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Mobilia_rND',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Mobilia_rNw',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Stenklo',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_Streit',[],[0.376,0.757,0.812],'+'); hold on;...
scatter(So_chlorite_DW_200',activity_Cld_Chlorite_Unattached_VanGinkel',[],[0.376,0.757,0.812],'+'); hold on;...

h8 =scatter(So_BPF_WW_200',activity_laccase_BPF_Attached_WW',[],[0.945,0.467,0.498],'+'); hold on;...
scatter(So_BPF_WW_200',activity_laccase_BPF_Unattached_WW',[],[0.945,0.467,0.498],'+'); hold on;...
scatter(So_BPF_DW_200',activity_laccase_BPF_Attached_DW',[],[0.945,0.467,0.498],'+'); hold on;...
scatter(So_BPF_DW_200',activity_laccase_BPF_Unattached_DW',[],[0.945,0.467,0.498],'+'); hold on;...

h9 =scatter(So_BPB_WW_200',activity_laccase_BPB_Attached_WW',[],[0.945,0.467,0.498],'*'); hold on;... 
scatter(So_BPB_WW_200',activity_laccase_BPB_Unattached_WW',[],[0.945,0.467,0.498],'*'); hold on;...
 
h10 =scatter(So_BPA_WW_200',activity_laccase_BPA_Attached_WW',[],[0.945,0.467,0.498],'x'); hold on;... 
scatter(So_BPA_WW_200',activity_laccase_BPA_Unattached_WW',[],[0.945,0.467,0.498],'x'); hold on;...
scatter(So_BPA_DW_200',activity_laccase_BPA_Attached_DW',[],[0.945,0.467,0.498],'x'); hold on;... 
scatter(So_BPA_DW_200',activity_laccase_BPA_Unattached_DW',[],[0.945,0.467,0.498],'x'); hold on;...
scatter(So_BPA_WW_200',activity_laccase_Brugnari_BPA_Unattached_WW',[],[0.945,0.467,0.498],'x'); hold on;... 
scatter(So_BPA_DW_200',activity_laccase_Brugnari_BPA_Unattached_DW',[],[0.945,0.467,0.498],'x'); hold on;...
scatter(So_BPA_WW_200',activity_laccase_Brugnari_BPA_Attached_WW',[],[0.945,0.467,0.498],'x'); hold on;... 
scatter(So_BPA_DW_200',activity_laccase_Brugnari_BPA_Attached_DW',[],[0.945,0.467,0.498],'x'); hold on;...

h11 =scatter(So_Phenol_DW_200',activity_tyrosinase_phenol_Attached_DW',[],[0.945,0.467,0.498],'s'); hold on;... 
scatter(So_Phenol_DW_200',activity_tyrosinase_phenol_Unattached_DW',[],[0.945,0.467,0.498],'s'); hold on;...
scatter(So_Phenol_DW_200',activity_laccase_phenol_Attached_DW',[],[0.945,0.467,0.498],'s'); hold on;... 
scatter(So_Phenol_DW_200',activity_laccase_phenol_Unattached_DW',[],[0.945,0.467,0.498],'s'); hold on;...
scatter(So_Phenol_DW_200',activity_HP_phenol_Attached_DW_Bayramoglu',[],[0.945,0.467,0.498],'s'); hold on;... 
scatter(So_Phenol_DW_200',activity_HP_phenol_Unattached_DW_Bayramoglu',[],[0.945,0.467,0.498],'s'); hold on;...
scatter(So_Phenol_DW_200',activity_HP_phenol_Unattached_DW_Zhang',[],[0.945,0.467,0.498],'s'); hold on;...
scatter(So_Phenol_DW_200',activity_HP_phenol_Attached_Spheres_DW_Zhang',[],[0.945,0.467,0.498],'s'); hold on;...
scatter(So_Phenol_DW_200',activity_HP_phenol_Attached_Nanodisk_DW_Zhang',[],[0.945,0.467,0.498],'s'); hold on;... 
scatter(So_Phenol_DW_200',activity_HP_phenol_Attached_Nanomultipod_DW_Zhang',[],[0.945,0.467,0.498],'s'); hold on;...
scatter(So_Phenol_DW_200',activity_HP_phenol_Unattached_DW_Vineh',[],[0.945,0.467,0.498],'s'); hold on;...
scatter(So_Phenol_DW_200',activity_HP_phenol_Attached_DW_Vineh',[],[0.945,0.467,0.498],'s'); hold on;...
scatter(So_Phenol_DW_200',activity_Tyrosinase_phenol_Unattached_DW_Dincer',[],[0.945,0.467,0.498],'s'); hold on;...
scatter(So_Phenol_DW_200',activity_Tyrosinase_phenol_Attached_DW_Dincer',[],[0.945,0.467,0.498],'s'); hold on;...

h12 =scatter(So_1CB_DW_200',activity_DbjA_1CB_Unattached_DW_Koudelakvoa',[],[0.635 0.502 0.725]); hold on;...
scatter(So_1CB_DW_200',activity_DhaA_1CB_Unattached_DW_Schindler',[],[0.635 0.502 0.725]); hold on;...
scatter(So_1CB_DW_200',activity_DhlA_1CB_Unattached_DW_Schanstra',[],[0.635 0.502 0.725]); hold on;...
scatter(So_1CB_DW_200',activity_DmbA_1CB_Unattached_DW_Koudelakvoa',[],[0.635 0.502 0.725]); hold on;...
scatter(So_1CB_DW_200',activity_LinB_1CB_Unattached_DW_Hynkova',[],[0.635 0.502 0.725]); hold on;...
scatter(So_1CB_DW_200',activity_LinB_D108N_1CB_Unattached_DW_Hynkova',[],[0.635 0.502 0.725]); hold on;...
scatter(So_1CB_DW_200',activity_LinB_E244Q_1CB_Unattached_DW_Hynkova',[],[0.635 0.502 0.725]); hold on;...
scatter(So_1CB_DW_200',activity_XaDHL_1CB_Unattached_DW_Schindler',[],[0.635 0.502 0.725]); hold on;...
scatter(So_1CB_DW_200',activity_DmmA_1CB_Unattached_DW_Buryska',[],[0.635 0.502 0.725]); hold on;...    
scatter(So_1CB_DW_200',activity_DbjA_1CB_Unattached_DW_Sato',[],[0.635 0.502 0.725]); hold on;...    

h13 =scatter(So_DCEthane_DW_200',activity_XaDHL_12CB_Unattached_DW_Schindler',[],[0.635 0.502 0.725],'+'); hold on;...
scatter(So_DCEthane_DW_200',activity_DmmA_12CB_Unattached_DW_Keuning',[],[0.635 0.502 0.725],'+'); hold on;...
scatter(So_DCEthane_DW_200',activity_DhlA_12CB_Unattached_DW_Schanstra',[],[0.635 0.502 0.725],'+'); hold on;...

h14 =scatter(So_TCP_DW_200',activity_DhaA_TCP_Unattached_DW_Bosma',[],[0.635 0.502 0.725],'*'); hold on;...    
scatter(So_TCP_DW_200',activity_Dha_TCP_Unattached_DW_Samin',[],[0.635 0.502 0.725],'*'); hold on;... 
scatter(So_TCP_DW_200',activity_DbjA_TCP_Unattached_DW_Sato',[],[0.635 0.502 0.725],'*'); hold on;... 

h15 =scatter(So_Chlorobutane_DW_200',activity_RrDHL_2CB_Unattached_DW_Schindler',[],[0.635 0.502 0.725],'x'); hold on;... 
    
h16 =scatter(So_Dibromoethane_DW_200',activity_DhlA_DBE_Unattached_DW_Schanstra',[],[0.635 0.502 0.725],'s'); hold on;... 
scatter(So_Dibromoethane_DW_200',activity_XaDhl_DBE_Unattached_DW_Schindler',[],[0.635 0.502 0.725],'s'); hold on;... 
scatter(So_Dibromoethane_DW_200',activity_RrDhl_DBE_Unattached_DW_Schindler',[],[0.635 0.502 0.725],'s'); hold on;...
scatter(So_Dibromoethane_DW_200',activity_DppA_DBE_Unattached_DW_Hesseler',[],[0.635 0.502 0.725],'s'); hold on;...
scatter(So_Dibromoethane_DW_200',activity_DhaA_DBE_Unattached_DW_Bosma',[],[0.635 0.502 0.725],'s'); hold on;...
scatter(So_Dibromoethane_DW_200',activity_DmmA_DBE_Unattached_DW_Buryska',[],[0.635 0.502 0.725],'s'); hold on;...

h5 =scatter(So_OP_WW_200',activity_laccase_OP_Attached_WW',[],[0.945,0.467,0.498],'^'); hold on;... 
scatter(So_OP_WW_200',activity_laccase_OP_Unattached_WW',[],[0.945,0.467,0.498],'^'); hold on;...
scatter(So_OP_DW_200',activity_laccase_OP_Attached_DW',[],[0.945,0.467,0.498],'^'); hold on;... 
scatter(So_OP_DW_200',activity_laccase_OP_Unattached_DW',[],[0.945,0.467,0.498],'^'); hold on;...

xlim([0.000001 1000000])
ylim([.000001 2000000])
set(gca,'xscale','log')
set(gca,'yscale','log')
  
xlabel('Contaminant Concentration (µM)')
ylabel('Biocatalysis Activity (min^-1)')

legend ([h1 h8 h9 h10 h11 h5 h6 h2 h3 h4 h7 h12 h13 h14 h15 h16 h17 h18],'Tetrachlorobisphenol A', 'Bisphenol F', 'Bisphenol B', 'Bisphenol A', 'Phenol', 'Octylphenol', 'Nonylphenol', 'Sulfathiazole', 'Sulfamethoxazole', 'Perchlorate',  'Chlorite', '1-Chlorobutane', '1,2-Dichloroethane', '1,2,3-Trichloropropane', '2-Chlorobutane', '1,2-Dibromoethane', 'Perchloroethylene', 'Trichloroethylene');

set(gca,'Fontsize',18);

