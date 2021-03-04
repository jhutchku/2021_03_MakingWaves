%% Load Files and Constants
load('So_UO2_DW_Inf_2000');
load('So_Pi_WW_2000');
load('So_Te_2000');
load('So_Eu_2000');
load('So_Dy_2000');
load('So_Nb_2000');
load('So_Y_2000');
load('So_Ce_2000');
load('So_As_2000');
load('So_Au_2000');
load('So_Cu_2000');
load('So_Ni_2000');
load('So_Zn_2000');

So_UO2_DW_Eff_2000=0.1050; %uM Regulatory Limit
So_Pi_WW_Eff_2000=3.2; %limit of 0.1mg/L reported in uM
So_Te_Eff_2000=0.00038;
So_Eu_Eff_2000=0.00013;
So_Dy_Eff_2000=0.0000018;
So_Nb_Eff_2000=0.000022;
So_Y_Eff_2000=0.000026;
So_Ce_Eff_2000=0.00071;
So_Au_Eff_2000=0.01;
So_As_Eff_2000=0.133;
So_Ni_Eff_2000=0.01;
So_Cu_Eff_2000=0.01;
So_Zn_Eff_2000=0.01;


Q=1000000; %Flowrate as liters per day
Qo=1; %Ratio of contaminant to biosorbent site

n=2000;

%% UO2
%Uranium oxide binding proteins from Zhou 2014_Mutant_1. Data obtained from
%'Kd values' on January 16, 2021
%initialize variables



% %Langmuir Isotherm Calculation
% qe_UO2_M1_Unattached_DW=zeros(n:1);
% b_UO2_M1=zeros(n:1);
% moles_UO2_M1=zeros(n:1);
% Kd_UO2_M1=latin_hs(0.0000000074,0.000000002,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M1(i)=1/Kd_UO2_M1(i);
%     
%     qe_UO2_M1_Unattached_DW(i)=(Qo*b_UO2_M1(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M1(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M1(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M1_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_1a. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M1a_Unattached_DW=zeros(n:1);
% b_UO2_M1a=zeros(n:1);
% moles_UO2_M1a=zeros(n:1);
% Kd_UO2_M1a=latin_hs(0.0002,0.0001,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M1a(i)=1/Kd_UO2_M1a(i);
%     
%     qe_UO2_M1a_Unattached_DW(i)=(Qo*b_UO2_M1a(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M1a(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M1a(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M1a_Unattached_DW(i)/1000000;
% end
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_2. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M2_Unattached_DW=zeros(n:1);
% b_UO2_M2=zeros(n:1);
% moles_UO2_M2=zeros(n:1);
% Kd_UO2_M2=latin_hs(0.098,0.025,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M2(i)=1/Kd_UO2_M2(i);
%     
%     qe_UO2_M2_Unattached_DW(i)=(Qo*b_UO2_M2(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M2(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M2(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M2_Unattached_DW(i)/1000000;
% end
% 
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_3. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M3_Unattached_DW=zeros(n:1);
% b_UO2_M3=zeros(n:1);
% moles_UO2_M3=zeros(n:1);
% Kd_UO2_M3=latin_hs(0.098,0.007,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M3(i)=1/Kd_UO2_M3(i);
%     
%     qe_UO2_M3_Unattached_DW(i)=(Qo*b_UO2_M3(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M3(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M3(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M3_Unattached_DW(i)/1000000;
% end
% 
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_4. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M4_Unattached_DW=zeros(n:1);
% b_UO2_M4=zeros(n:1);
% moles_UO2_M4=zeros(n:1);
% Kd_UO2_M4=latin_hs(0.037,0.009,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M4(i)=1/Kd_UO2_M4(i);
%     
%     qe_UO2_M4_Unattached_DW(i)=(Qo*b_UO2_M4(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M4(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M4(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M4_Unattached_DW(i)/1000000;
% end
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_4a. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M4a_Unattached_DW=zeros(n:1);
% b_UO2_M4a=zeros(n:1);
% moles_UO2_M4a=zeros(n:1);
% Kd_UO2_M4a=latin_hs(0.000056,0.000001,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M4a(i)=1/Kd_UO2_M4a(i);
%     
%     qe_UO2_M4a_Unattached_DW(i)=(Qo*b_UO2_M4a(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M4a(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M4a(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M4a_Unattached_DW(i)/1000000;
% end
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_5. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M5_Unattached_DW=zeros(n:1);
% b_UO2_M5=zeros(n:1);
% moles_UO2_M5=zeros(n:1);
% Kd_UO2_M5=latin_hs(0.092,0.038,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M5(i)=1/Kd_UO2_M5(i);
%     
%     qe_UO2_M5_Unattached_DW(i)=(Qo*b_UO2_M5(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M5(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M5(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M5_Unattached_DW(i)/1000000;
% end
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_6. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M6_Unattached_DW=zeros(n:1);
% b_UO2_M6=zeros(n:1);
% moles_UO2_M6=zeros(n:1);
% Kd_UO2_M6=latin_hs(0.0018,0.0003,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M6(i)=1/Kd_UO2_M6(i);
%     
%     qe_UO2_M6_Unattached_DW(i)=(Qo*b_UO2_M6(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M6(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M6(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M6_Unattached_DW(i)/1000000;
% end
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_6a. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M6a_Unattached_DW=zeros(n:1);
% b_UO2_M6a=zeros(n:1);
% moles_UO2_M6a=zeros(n:1);
% Kd_UO2_M6a=latin_hs(0.000005,0.000005,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M6a(i)=1/Kd_UO2_M6a(i);
%     
%     qe_UO2_M6a_Unattached_DW(i)=(Qo*b_UO2_M6a(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M6a(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M6a(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M6a_Unattached_DW(i)/1000000;
% end
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_7. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M7_Unattached_DW=zeros(n:1);
% b_UO2_M7=zeros(n:1);
% moles_UO2_M7=zeros(n:1);
% Kd_UO2_M7=latin_hs(0.000001,0.0000003,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M7(i)=1/Kd_UO2_M7(i);
%     
%     qe_UO2_M7_Unattached_DW(i)=(Qo*b_UO2_M7(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M7(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M7(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M7_Unattached_DW(i)/1000000;
% end
% 
% %Uranium oxide binding proteins from Zhou 2014_Mutant_7a. Data obtained from
% %'Kd values' on January 16, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_UO2_M7a_Unattached_DW=zeros(n:1);
% b_UO2_M7a=zeros(n:1);
% moles_UO2_M7a=zeros(n:1);
% Kd_UO2_M7a=latin_hs(0.00002,0.0000003,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_UO2_M7a(i)=1/Kd_UO2_M7a(i);
%     
%     qe_UO2_M7a_Unattached_DW(i)=(Qo*b_UO2_M7a(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2_M7a(i)*So_UO2_DW_Eff_2000));
%     
%     moles_UO2_M7a(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_M7a_Unattached_DW(i)/1000000;
% end

% %Uranium oxide binding proteins from range. Data obtained from
% %'Kd values' on February 4th, 2021
% %initialize variables
% 
% 
% 
%Langmuir Isotherm Calculation
qe_UO2_Unattached_DW=zeros(n:1);
b_UO2=zeros(n:1);
moles_UO2=zeros(n:1);
Kd_UO2=lhsu(0.0000000074,0.098,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_UO2(i)=1/Kd_UO2(i);
    
    qe_UO2_Unattached_DW(i)=(Qo*b_UO2(i)*So_UO2_DW_Eff_2000)/(1+(b_UO2(i)*So_UO2_DW_Eff_2000));
    
    moles_UO2(i)=(Q*(So_UO2_DW_Inf_2000(i)-So_UO2_DW_Eff_2000))/qe_UO2_Unattached_DW(i)/1000000;
end

%% Phosphate

%Phosphate binding proteins from Solscheid 2015. Data obtained from
%'Kd values' on January 18, 2021
%initialize variables

% %Langmuir Isotherm Calculation
% qe_Pi_Solscheid_Unattached_DW=zeros(n:1);
% b_Pi_Solscheid=zeros(n:1);
% moles_Pi_Solscheid=zeros(n:1);
% Kd_Pi_Solscheid=lhsu(0.063,0.077,2000);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Solscheid(i)=1/Kd_Pi_Solscheid(i);
%     
%     qe_Pi_Solscheid_Unattached_DW(i)=(Qo*b_Pi_Solscheid(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Solscheid(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Solscheid(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Solscheid_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Phosphate binding proteins from Solscheid 2015 Mutant 1 (M1). Data obtained from
% %'Kd values' on January 18, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_Pi_Solscheid_M1_Unattached_DW=zeros(n:1);
% b_Pi_Solscheid_M1=zeros(n:1);
% moles_Pi_Solscheid_M1=zeros(n:1);
% Kd_Pi_Solscheid_M1=latin_hs(7.4,0.4,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Solscheid_M1(i)=1/Kd_Pi_Solscheid_M1(i);
%     
%     qe_Pi_Solscheid_M1_Unattached_DW(i)=(Qo*b_Pi_Solscheid_M1(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Solscheid_M1(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Solscheid_M1(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Solscheid_M1_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Phosphate binding proteins from Solscheid 2015 Mutant 2 (M2). Data obtained from
% %'Kd values' on January 18, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_Pi_Solscheid_M2_Unattached_DW=zeros(n:1);
% b_Pi_Solscheid_M2=zeros(n:1);
% moles_Pi_Solscheid_M2=zeros(n:1);
% Kd_Pi_Solscheid_M2=latin_hs(32,2,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Solscheid_M2(i)=1/Kd_Pi_Solscheid_M2(i);
%     
%     qe_Pi_Solscheid_M2_Unattached_DW(i)=(Qo*b_Pi_Solscheid_M2(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Solscheid_M2(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Solscheid_M2(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Solscheid_M2_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Phosphate binding proteins from Solscheid 2015 Mutant 3 (M3). Data obtained from
% %'Kd values' on January 18, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_Pi_Solscheid_M3_Unattached_DW=zeros(n:1);
% b_Pi_Solscheid_M3=zeros(n:1);
% moles_Pi_Solscheid_M3=zeros(n:1);
% Kd_Pi_Solscheid_M3=latin_hs(220,11,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Solscheid_M3(i)=1/Kd_Pi_Solscheid_M3(i);
%     
%     qe_Pi_Solscheid_M3_Unattached_DW(i)=(Qo*b_Pi_Solscheid_M3(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Solscheid_M3(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Solscheid_M3(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Solscheid_M3_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Phosphate binding proteins from Venkiteschwaran. Data obtained from
% %'Kd values' on January 18, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_Pi_Venkiteschwaran_Unattached_DW=zeros(n:1);
% b_Pi_Venkiteschwaran=zeros(n:1);
% moles_Pi_Venkiteschwaran=zeros(n:1);
% Kd_Pi_Venkiteschwaran=latin_hs(0.0476,0.0092,2000,1);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Venkiteschwaran(i)=1/Kd_Pi_Venkiteschwaran(i);
%     
%     qe_Pi_Venkiteschwaran_Unattached_DW(i)=(Qo*b_Pi_Venkiteschwaran(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Venkiteschwaran(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Venkiteschwaran(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Venkiteschwaran_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Phosphate binding proteins from Medveczky. Data obtained from
% %'Kd values' on January 18, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_Pi_Medveczky_Unattached_DW=zeros(n:1);
% b_Pi_Medveczky=zeros(n:1);
% moles_Pi_Medveczky=zeros(n:1);
% Kd_Pi_Medveczky=lhsu(0.72,0.88,2000);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Medveczky(i)=1/Kd_Pi_Medveczky(i);
%     
%     qe_Pi_Medveczky_Unattached_DW(i)=(Qo*b_Pi_Medveczky(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Medveczky(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Medveczky(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Medveczky_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Phosphate binding proteins from Gu 2006. Data obtained from
% %'Kd values' on January 18, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_Pi_Gu_Unattached_DW=zeros(n:1);
% b_Pi_Gu=zeros(n:1);
% moles_Pi_Gu=zeros(n:1);
% Kd_Pi_Gu=lhsu(0.756,0.924,2000);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Gu(i)=1/Kd_Pi_Gu(i);
%     
%     qe_Pi_Gu_Unattached_DW(i)=(Qo*b_Pi_Gu(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Gu(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Gu(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Gu_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Phosphate binding proteins from Gu Mutant 1 (M1) 2006. Data obtained from
% %'Kd values' on January 18, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_Pi_Gu_M1_Unattached_DW=zeros(n:1);
% b_Pi_Gu_M1=zeros(n:1);
% moles_Pi_Gu_M1=zeros(n:1);
% Kd_Pi_Gu_M1=lhsu(0.234,0.286,2000);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Gu_M1(i)=1/Kd_Pi_Gu_M1(i);
%     
%     qe_Pi_Gu_M1_Unattached_DW(i)=(Qo*b_Pi_Gu_M1(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Gu_M1(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Gu_M1(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Gu_M1_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Phosphate binding proteins from Brune 1994. Data obtained from
% %'Kd values' on January 18, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_Pi_Brune_Unattached_DW=zeros(n:1);
% b_Pi_Brune=zeros(n:1);
% moles_Pi_Brune=zeros(n:1);
% Kd_Pi_Brune=lhsu(0.09,0.11,2000);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Brune(i)=1/Kd_Pi_Brune(i);
%     
%     qe_Pi_Brune_Unattached_DW(i)=(Qo*b_Pi_Brune(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Brune(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Brune(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Brune_Unattached_DW(i)/1000000;
%         
%     
% end
% 
% %Phosphate binding proteins from Okoh 2006. Data obtained from
% %'Kd values' on January 18, 2021
% %initialize variables
% 
% 
% 
% %Langmuir Isotherm Calculation
% qe_Pi_Okoh_Unattached_DW=zeros(n:1);
% b_Pi_Okoh=zeros(n:1);
% moles_Pi_Okoh=zeros(n:1);
% Kd_Pi_Okoh=lhsu(0.063,0.077,2000);
% 
% % Code assumes all variables are uncertain
% for i=1:n
%     b_Pi_Okoh(i)=1/Kd_Pi_Okoh(i);
%     
%     qe_Pi_Okoh_Unattached_DW(i)=(Qo*b_Pi_Okoh(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi_Okoh(i)*So_Pi_WW_Eff_2000));
%     
%     moles_Pi_Okoh(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Okoh_Unattached_DW(i)/1000000;
%         
%    
%     
% end

% %Phosphate binding proteins from all proteins. Data shows a range of Kd values. Data obtained from
% %'Kd values' on February 4, 2021
% %initialize variables
% 
% 
% 
%Langmuir Isotherm Calculation
qe_Pi_Unattached_DW=zeros(n:1);
b_Pi=zeros(n:1);
moles_Pi=zeros(n:1);
Kd_Pi=lhsu(.0476,7.4,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Pi(i)=1/Kd_Pi(i);
    
    qe_Pi_Unattached_DW(i)=(Qo*b_Pi(i)*So_Pi_WW_Eff_2000)/(1+(b_Pi(i)*So_Pi_WW_Eff_2000));
    
    moles_Pi(i)=(Q*(So_Pi_WW_2000(i)-So_Pi_WW_Eff_2000))/qe_Pi_Unattached_DW(i)/1000000;
        
   
    
end

%% Terbium

%Lanthanide binding proteins from Tay 2018. Data obtained from
%'Kd values' on January 21, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_Te_Tay_Unattached_DW=zeros(n:1);
b_Te_Tay=zeros(n:1);
moles_Te_Tay=zeros(n:1);
Kd_Te_Tay=lhsu(14.7,6.3,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Te_Tay(i)=1/Kd_Te_Tay(i);
    
    qe_Te_Tay_Unattached_DW(i)=(Qo*b_Te_Tay(i)*So_Te_Eff_2000)/(1+(b_Te_Tay(i)*So_Te_Eff_2000));
    
    moles_Te_Tay(i)=(Q*(So_Te_Inf_2000(i)-So_Te_Eff_2000))/qe_Te_Tay_Unattached_DW(i)/1000000;

end

%% Europium

%Lanthanide binding proteins from Tay 2018. Data obtained from
%'Kd values' on January 21, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_Eu_Tay_Unattached_DW=zeros(n:1);
b_Eu_Tay=zeros(n:1);
moles_Eu_Tay=zeros(n:1);
Kd_Eu_Tay=lhsu(10.9,5.4,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Eu_Tay(i)=1/Kd_Eu_Tay(i);
    
    qe_Eu_Tay_Unattached_DW(i)=(Qo*b_Eu_Tay(i)*So_Eu_Eff_2000)/(1+(b_Eu_Tay(i)*So_Eu_Eff_2000));
    
    moles_Eu_Tay(i)=(Q*(So_Eu_Inf_2000(i)-So_Eu_Eff_2000))/qe_Eu_Tay_Unattached_DW(i)/1000000;

end

%% Dysprosium

%Lanthanide binding proteins from Tay 2018. Data obtained from
%'Kd values' on January 27, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_Dy_Tay_Unattached_DW=zeros(n:1);
b_Dy_Tay=zeros(n:1);
moles_Dy_Tay=zeros(n:1);
Kd_Dy_Tay=lhsu(15.1,6.9,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Dy_Tay(i)=1/Kd_Dy_Tay(i);
    
    qe_Dy_Tay_Unattached_DW(i)=(Qo*b_Dy_Tay(i)*So_Dy_Eff_2000)/(1+(b_Dy_Tay(i)*So_Dy_Eff_2000));
    
    moles_Dy_Tay(i)=(Q*(So_Dy_Inf_2000(i)-So_Dy_Eff_2000))/qe_Dy_Tay_Unattached_DW(i)/1000000;

end 

%% Niobium

%Lanthanide binding proteins from Tay 2018. Data obtained from
%'Kd values' on January 27, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_Nb_Tay_Unattached_DW=zeros(n:1);
b_Nb_Tay=zeros(n:1);
moles_Nb_Tay=zeros(n:1);
Kd_Nb_Tay=lhsu(51.5,14.2,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Nb_Tay(i)=1/Kd_Nb_Tay(i);
    
    qe_Nb_Tay_Unattached_DW(i)=(Qo*b_Nb_Tay(i)*So_Nb_Eff_2000)/(1+(b_Nb_Tay(i)*So_Nb_Eff_2000));
    
    moles_Nb_Tay(i)=(Q*(So_Nb_Inf_2000(i)-So_Nb_Eff_2000))/qe_Nb_Tay_Unattached_DW(i)/1000000;

end  

%% Yttrium

%Lanthanide binding proteins from Tay 2018. Data obtained from
%'Kd values' on January 27, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_Y_Tay_Unattached_DW=zeros(n:1);
b_Y_Tay=zeros(n:1);
moles_Y_Tay=zeros(n:1);
Kd_Y_Tay=lhsu(54.3,20.7,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Y_Tay(i)=1/Kd_Y_Tay(i);
    
    qe_Y_Tay_Unattached_DW(i)=(Qo*b_Y_Tay(i)*So_Y_Eff_2000)/(1+(b_Y_Tay(i)*So_Y_Eff_2000));
    
    moles_Y_Tay(i)=(Q*(So_Y_Inf_2000(i)-So_Y_Eff_2000))/qe_Y_Tay_Unattached_DW(i)/1000000;

end  

%% Cerium

%Lanthanide binding proteins from Tay 2018. Data obtained from
%'Kd values' on January 27, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_Ce_Tay_Unattached_DW=zeros(n:1);
b_Ce_Tay=zeros(n:1);
moles_Ce_Tay=zeros(n:1);
Kd_Ce_Tay=lhsu(54.3,20.7,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Ce_Tay(i)=1/Kd_Ce_Tay(i);
    
    qe_Ce_Tay_Unattached_DW(i)=(Qo*b_Ce_Tay(i)*So_Ce_Eff_2000)/(1+(b_Ce_Tay(i)*So_Ce_Eff_2000));
    
    moles_Ce_Tay(i)=(Q*(So_Ce_Inf_2000(i)-So_Ce_Eff_2000))/qe_Ce_Tay_Unattached_DW(i)/1000000;

end  

%% Arsenic
%Various arsenic binding proteins from Shen 2013. Data obtained from
%'Kd values' on February 3, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_As_Shen_Unattached_DW=zeros(n:1);
b_As_Shen=zeros(n:1);
moles_As_Shen=zeros(n:1);
Kd_As_Shen=lhsu(0.06,0.6,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_As_Shen(i)=1/Kd_As_Shen(i);
    
    qe_As_Shen_Unattached_DW(i)=(Qo*b_As_Shen(i)*So_As_Eff_2000)/(1+(b_As_Shen(i)*So_As_Eff_2000));
    
    moles_As_Shen(i)=(Q*(So_As_Inf_2000(i)-So_As_Eff_2000))/qe_As_Shen_Unattached_DW(i)/1000000;
    
    
end  

%% Nickel
%Various nickle binding proteins. Data obtained from
%'Kd values' on February 4, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_Ni=zeros(n:1);
b_Ni=zeros(n:1);
moles_Ni=zeros(n:1);
Kd_Ni=lhsu(0.09,0.11,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Ni(i)=1/Kd_Ni(i);
    
    qe_Ni(i)=(Qo*b_Ni(i)*So_Ni_Eff_2000)/(1+(b_Ni(i)*So_Ni_Eff_2000));
    
    moles_Ni(i)=(Q*(So_Ni_Inf_2000(i)-So_Ni_Eff_2000))/qe_Ni(i)/1000000;
    
    
end  

%% Zinc
%Various zinc binding proteins. Data obtained from
%'Kd values' on February 4, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_Zn=zeros(n:1);
b_Zn=zeros(n:1);
moles_Zn=zeros(n:1);
Kd_Zn=lhsu(0.001,0.0001,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Zn(i)=1/Kd_Zn(i);
    
    qe_Zn(i)=(Qo*b_Zn(i)*So_Zn_Eff_2000)/(1+(b_Zn(i)*So_Zn_Eff_2000));
    
    moles_Zn(i)=(Q*(So_Zn_Inf_2000(i)-So_Zn_Eff_2000))/qe_Zn(i)/1000000;
    
    
end  

%% Copper
%Various Copper binding proteins. Data obtained from
%'Kd values' on February 4, 2021
%initialize variables

%Langmuir Isotherm Calculation
qe_Cu=zeros(n:1);
b_Cu=zeros(n:1);
moles_Cu=zeros(n:1);
Kd_Cu=lhsu(0.00000000001,0.00001,2000);

% Code assumes all variables are uncertain
for i=1:n
    b_Cu(i)=1/Kd_Cu(i);
    
    qe_Cu(i)=(Qo*b_Cu(i)*So_Cu_Eff_2000)/(1+(b_Cu(i)*So_Cu_Eff_2000));
    
    moles_Cu(i)=(Q*(So_Cu_Inf_2000(i)-So_Cu_Eff_2000))/qe_Cu(i)/1000000;
    
    
end  

%% PLOTS
a=So_Pi_WW_2000*Q;
b=a/1000000;
c=So_UO2_DW_Inf_2000*Q;
d=c/1000000;
e=So_Te_Inf_2000*Q;
f=e/1000000;
g=So_Eu_Inf_2000*Q;
h=g/1000000;
i=So_Dy_Inf_2000*Q;
j=i/1000000;
k=So_Nb_Inf_2000*Q;
l=k/1000000;
m=So_Y_Inf_2000*Q;
n=m/1000000;
o=So_Ce_Inf_2000*Q;
p=o/1000000;
q=So_As_Inf_2000*Q;
r=q/1000000;
s=So_Ni_Inf_2000*Q;
t=s/1000000;
u=So_Zn_Inf_2000*Q;
v=u/1000000;
w=So_Cu_Inf_2000*Q;
x=w/1000000;

h12= scatter(x,moles_Cu',[],[0.635 0.502 0.725],'o'); hold on;...

h10= scatter(t,moles_Ni',[],[0.976 0.561 0.376],'s'); hold on;...

h9= scatter(r,moles_As_Shen',[],[0.635 0.502 0.725],'.'); hold on;...

% h8= scatter(p,moles_Ce_Tay',[],[0.635 0.502 0.725],'.'); hold on;...
% 
% h7= scatter(n,moles_Y_Tay',[],[0.635 0.502 0.725],'+'); hold on;...
% 
% h6= scatter(l,moles_Nb_Tay',[],[0.635 0.502 0.725],'o'); hold on;...
% 
% h5= scatter(j,moles_Dy_Tay',[],[0.635 0.502 0.725],'^'); hold on;...
% 
% h4= scatter(h,moles_Eu_Tay',[],[0.635 0.502 0.725],'*'); hold on;...
%     
% h3= scatter(f,moles_Te_Tay',[],[0.635 0.502 0.725],'s'); hold on;...

h2= scatter(b,moles_Pi',[],[0.475,.749,.510],'^'); hold on;... 

% scatter(b,moles_Pi_Solscheid',[],[0.475,.749,.510],'^'); hold on;...
%     scatter(b,moles_Pi_Solscheid_M1',[],[0.475,.749,.510],'^'); hold on;... 
%     scatter(b,moles_Pi_Solscheid_M2',[],[0.475,.749,.510],'^'); hold on;...
%     scatter(b,moles_Pi_Solscheid_M3',[],[0.475,.749,.510],'^'); hold on;...    
%     scatter(b,moles_Pi_Venkiteschwaran',[],[0.475,.749,.510],'^'); hold on;...    
%     scatter(b,moles_Pi_Medveczky',[],[0.475,.749,.510],'^'); hold on;...    
%     scatter(b,moles_Pi_Gu',[],[0.475,.749,.510],'^'); hold on;... 
%     scatter(b,moles_Pi_Gu_M1',[],[0.475,.749,.510],'^'); hold on;... 
%     scatter(b,moles_Pi_Brune',[],[0.475,.749,.510],'^'); hold on;... 
%     scatter(b,moles_Pi_Okoh',[],[0.475,.749,.510],'^'); hold on;... 

h1= scatter(d,moles_UO2',[],[0.945,0.467,0.498]); hold on;...  

% scatter(d,moles_UO2_M1',[],[0.945,0.467,0.498]); hold on;...
%      scatter(d,moles_UO2_M1a',[],[0.945,0.467,0.498]); hold on;...
%      scatter(d,moles_UO2_M2',[],[0.945,0.467,0.498]); hold on;...
%      scatter(d,moles_UO2_M3',[],[0.945,0.467,0.498]); hold on;...
%      scatter(d,moles_UO2_M4',[],[0.945,0.467,0.498]); hold on;...
%      scatter(d,moles_UO2_M4a',[],[0.945,0.467,0.498]); hold on;...
%      scatter(d,moles_UO2_M5',[],[0.945,0.467,0.498]); hold on;...
%      scatter(d,moles_UO2_M6',[],[0.945,0.467,0.498]); hold on;...     
%      scatter(d,moles_UO2_M6a',[],[0.945,0.467,0.498]); hold on;...      
%      scatter(d,moles_UO2_M7',[],[0.945,0.467,0.498]); hold on;...       
%      scatter(d,moles_UO2_M7a',[],[0.945,0.467,0.498]); hold on;... 

h11= scatter(v,moles_Zn',[],[0.376,0.757,0.812],'+'); hold on;...
    
h12= scatter(x,moles_Cu',[],[0.635 0.502 0.725],'o'); hold on;...
 
 xlim([0.000001 180])
 ylim([.000001 600])
% set(gca,'xscale','log')
% set(gca,'yscale','log')
%   
 xlabel('Contaminant Mass Removed (moles day^-^1)')
 ylabel('Biosorbent Mass (moles day^-^1)')
% 
%legend ([h9 h8 h7 h6 h5 h4 h3 h2 h1], 'Gold', 'Cerium', 'Yttrium', 'Niobium', 'Dysprosium', 'Europium', 'Terbium', 'Phosphate', 'Uranium');

legend ([h12 h11 h10 h9 h2 h1], 'Copper', 'Zinc', 'Nickel', 'Arsenic', 'Phosphate', 'Uranium');

set(gca,'Fontsize',18);
