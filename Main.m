
                      
%              CPSOCGSA for Engineering Design Problems
% 
%                  E-Mail: sajad.win8@gmail.com                   
%                                                                         
%              Homepage: https://github.com/SajadAHMAD1.                            
%                
%   Programmer: Sajad Ahmad Rather      
%   Developed in MATLAB R2013a 

 


clear all
close all
clc

N = 50;                              % Size of the swarm " no of objects "
Max_Iteration  = 500;              % Maximum number of "iterations"
Q=1;            % ACO Parameter
tau0=10;        % Initial Phromone             (ACO)
alpha=0.3;      % Phromone Exponential Weight  (ACO)
rho=0.1;        % Evaporation Rate             (ACO)
Pc = 0.95;      % GA Parameter
Pm = 0.001;     % GA Parameter
Er = 0.2;       % GA Parameter
beta_min=0.2;   % Lower Bound of Scaling Factor (DE)
beta_max=0.8;   % Upper Bound of Scaling Factor (DE)
pCR=0.2;        % Crossover Probability         (DE)
All_Convergence_curves=zeros(2,Max_Iteration);
 ElitistCheck=1; % GSA Parameter
 Rpower=1;       % GSA Parameter
 min_flag=1; % 1: minimization, 0: maximization (GSA)
 Algorithm_num=15;
 chValueInitial=20; % CGSA
%  chaosIndex=12; % CGSA
% subplot(3,2,1);
 Benchmark_Function_ID=30
 %Benchmark function ID

    RunNo  = 20; 
%    for k = [ 1 : 1 : RunNo ]   
% % 
% [gBestScore,gBest,GlobalBestCost]= CPSOGSA(Benchmark_Function_ID,N,Max_Iteration,Algorithm_num,chValueInitial);
% BestSolutions1(k) = gBestScore;
% [Fbest,Lbest,BestChart]=GSA(Benchmark_Function_ID,N,Max_Iteration,ElitistCheck,min_flag,Rpower);
% BestSolutions3(k) = Fbest;
%   [PcgCurve,GBEST]=pso(Benchmark_Function_ID,N,Max_Iteration);
%      BestSolutions3(k) = GBEST.O;
%  [BestCost,BestSol] = bbo( Benchmark_Function_ID, N, Max_Iteration);
%      BestSolutions4(k) = BestSol.Cost;
%      [BestChrom , Gcgcurve]  = GA(N,Max_Iteration,Pc,Pm,Er,Benchmark_Function_ID);
%       BestSolutions5(k) = BestChrom.Fitness ;
% [BestSolDE,DBestSol,BestCostDE] = DE(Benchmark_Function_ID, N, Max_Iteration,beta_min,beta_max,pCR);
%         BestSolutions3(k) = BestSolDE.Cost ;
%   [BestSolACO,BestAnt,BestCostACO] = ACO(Benchmark_Function_ID, N, Max_Iteration,Q,tau0,alpha,rho);
%        BestSolutions1(k) = BestSolACO.Cost ;
%  [CFbest,CLbest,CBestChart]=CHGSA(Benchmark_Function_ID,N,Max_Iteration,ElitistCheck,min_flag,Rpower,Algorithm_num,chValueInitial);
% if Algorithm_num==5
%     [CFbest,CLbest1,CBestChart]=CHGSA(Benchmark_Function_ID,N,Max_Iteration,ElitistCheck,min_flag,Rpower,Algorithm_num,chValueInitial);
%  end
%  BestSolutions2(k) = CFbest ;
%     Average= mean(BestSolutions1);
%     StandDP=std(BestSolutions1);
%     Med = median(BestSolutions1); 
%     [BestValueP I] = min(BestSolutions1);
%     [WorstValueP IM]=max(BestSolutions1);
% % Wilcoxon rank sum test
% disp(' Wilcoxon RankSum Test ')
%  [p,h,stats]=ranksum(GlobalBestCost,GlobalBestCost)  
%          disp(['Run # ' , num2str(k), ' gBestScore:  ' , num2str( gBestScore)]);
%      disp(['Run # ' , num2str(k), ' Fbest:  ' , num2str( Fbest)]);
%      disp(['Run # ' , num2str(k), '  GBEST.O: ' , num2str( GBEST.O)]);
%       disp(['Run # ' , num2str(k), ' BestSol.Cost:  ' , num2str( BestSol.Cost)]);
%       disp(['Run # ' , num2str(k), ' BestChrom.Fitness :  ' , num2str( BestChrom.Fitness )]);
%        disp(['Run # ' , num2str(k), ' BestSolDE.Cost :  ' , num2str( BestSolDE.Cost)]);
%      disp(['Run # ' , num2str(k), ' BestSolACO.Cost:  ' , num2str( BestSolACO.Cost )]);
%   disp(['Run # ' , num2str(k), ' CFbest :  ' , num2str( CFbest ),' Algorithm_num= ' , num2str(Algorithm_num)]);
% % %    disp(['Average=',num2str( Average),'Standard Deviation=',num2str( StandDP),'Median=',num2str(  Med )]);
% % %      disp(num2str( GBEST.O));

%     end

%  figure
% %  subplot(BestSolutions1)
% %   boxplot(x,g)
% %% Main Boxplot FUNCTION%%
%    boxplot([BestSolutions1',BestSolutions2',BestSolutions3',BestSolutions4',BestSolutions5',BestSolutions6',BestSolutions7',BestSolutions8'],{'CPSOGSA','GSA','PSO','BBO','GA','DE','ACO','CCPSOGSA'})


for Algorithm_num=7
     for i=1:RunNo
%         [gBestScore,gBest,GlobalBestCost]= CPSOGSA(Benchmark_Function_ID, N, Max_Iteration);
%          BestSolutions1(i) = gBestScore;
%          [Fbest,Lbest,BestChart]=GSA(Benchmark_Function_ID,N,Max_Iteration,ElitistCheck,min_flag,Rpower);
%          BestSolutions2(i) = Fbest;
         [PcgCurve,GBEST]=pso(Benchmark_Function_ID,N,Max_Iteration);
         BestSolutions3(i) = GBEST.O;
%          [BestCost,BestSol] = bbo( Benchmark_Function_ID, N, Max_Iteration);
%          BestSolutions4(i) = BestSol.Cost;
%          [BestChrom , Gcgcurve]  = GA(N,Max_Iteration,Pc,Pm,Er,Benchmark_Function_ID);
%          BestSolutions5(i) = BestChrom.Fitness ;
%          [BestSolDE,DBestSol,BestCostDE] = DE(Benchmark_Function_ID, N, Max_Iteration,beta_min,beta_max,pCR);
%          BestSolutions6(i) = BestSolDE.Cost ;
%          [BestSolACO,BestAnt,BestCostACO] = ACO(Benchmark_Function_ID, N, Max_Iteration,Q,tau0,alpha,rho);
%          BestSolutions7(i) = BestSolACO.Cost ;
%          
         disp(['Run # ' , num2str(i), ' gBestScore  :  ' , num2str( gBestScore ),' Algorithm_num= ' , num2str(Algorithm_num)]);
      
         BestSolutions8(i) = gBestScore ;
% disp(['Run # ' , num2str(i), ' gBestScore:  ' , num2str( gBestScore)]);
%  disp(['Run # ' , num2str(k), '  GBEST.O: ' , num2str( GBEST.O)]);
     end
%     Average= mean(BestSolutions1);
%     StandDP=std(BestSolutions8);
%     Med = median(BestSolutions8); 
%     [BestValueP I] = min(BestSolutions8);
%     [WorstValueP IM]=max(BestSolutions8);
%      title(['\fontsize{12}\bf Benchmark Function: F',num2str(Benchmark_Function_ID)]);
%        disp(['Run # ' , num2str(i), ' gBestScore  :  ' , num2str( gBestScore ),' Algorithm_num= ' , num2str(Algorithm_num)]);  
      end
%      disp([ 'Best=',num2str( BestValueP)]);
%      disp(['Worst=',num2str(WorstValueP)]);
%      disp(['Average=',num2str( Average)]);
%      disp([ 'Standard Deviation=',num2str( StandDP)]);
%      disp(['Median=',num2str(Med)]);
% Wilcoxon rank sum test
disp(' Wilcoxon RankSum Test ')
[p,h]= signrank(BestSolutions3,BestSolutions8)
%     figure
%     semilogy(1:Max_Iteration,GlobalBestCost,'DisplayName','CPSOGSA', 'Color', 'r','Marker','diamond','LineStyle','-','LineWidth',2,...
%         'MarkerEdgeColor','r','MarkerFaceColor',[.49 1 .63],'MarkerSize',1);
%    hold on
%        semilogy(1:Max_Iteration,GlobalBestCost,'DisplayName','PSOGSA','Color','b','LineStyle','-.');
%    semilogy(1:Max_Iteration,BestChart,'DisplayName','GSA','Color','g','Marker','o','LineStyle','-','LineWidth',2,...
%         'MarkerEdgeColor','g','MarkerFaceColor',[.49 1 .63],'MarkerSize',1);
%    semilogy(1:Max_Iteration,PcgCurve,'DisplayName','PSO','Color','c','Marker','square','LineStyle','-','LineWidth',2,...
%        'MarkerEdgeColor','c','MarkerFaceColor',[.49 1 .63],'MarkerSize',1);
%    semilogy(1:Max_Iteration,BestCost,'DisplayName','BBO','Color','b','Marker','*','LineStyle','-','LineWidth',2,...
%        'MarkerEdgeColor','b','MarkerFaceColor',[.49 1 .63],'MarkerSize',1);
%    semilogy(1:Max_Iteration,Gcgcurve,'DisplayName','GA','Color','m','Marker','<','LineStyle','-','LineWidth',2,...
%        'MarkerEdgeColor','m','MarkerFaceColor',[.49 1 .63],'MarkerSize',1);
%    semilogy(1:Max_Iteration,BestCostDE,'DisplayName','DE','Color','y','Marker','+','LineStyle','-','LineWidth',2,...
%        'MarkerEdgeColor','y','MarkerFaceColor',[.49 1 .63],'MarkerSize',1);
%    semilogy(1:Max_Iteration,BestCostACO,'DisplayName','ACO','Color','c','LineStyle','-.','LineWidth',1);
%     semilogy(1:Max_Iteration,GlobalBestCost,'DisplayName','CCPSOGSA','Color','m','LineStyle',':','LineWidth',1);
% boxplot([BestSolutions1',BestSolutions2',BestSolutions3',BestSolutions4',BestSolutions5',BestSolutions6',BestSolutions7',BestSolutions8'],...
%     {'CPSOGSA','GSA','PSO','BBO','GA','DE','ACO','CCPSOGSA'})
% boxplot([BestSolutions1',BestSolutions2',BestSolutions3',BestSolutions4',BestSolutions5',BestSolutions6',BestSolutions7',BestSolutions8'],...
%     'Notch','on','Labels',{'CPSOGSA','GSA','PSO','BBO','GA','DE','ACO','CCPSOGSA'},'Whisker',1)
%    title ('\fontsize{12}\bf Welded Beam Design');
% title ('\fontsize{12}\bf Compression Spring Design');
%   title ('\fontsize{12}\bf Pressure Vessel Design');
% % %   title ('\fontsize{12}\bf Speed Reducer Design');
% % %  title ('\fontsize{12}\bf Gear Train Design');
% % % title ('\fontsize{12}\bf Himmelblaus Problem');
% % title ('\fontsize{12}\bf Three Bar Truss Design');
% % % title ('\fontsize{12}\bf  Stepped Cantilever Beam Design');
% % % title ('\fontsize{12}\bf  Multiple Disc Clutch Brake Design');
% % title ('\fontsize{12}\bf   Hydrodynamic Thrust Bearing Design');
% xlabel('\fontsize{12}\bf Algorithm');
% ylabel('\fontsize{12}\bf Fitness(Best-so-far)');
% legend('\fontsize{10}\bf CCPSOGSA');
%  legend('\fontsize{10}\bf CPSOGSA','\fontsize{10}\bf GSA','\fontsize{10}\bf PSO','\fontsize{10}\bf BBO','\fontsize{10}\bf GA',...
%     '\fontsize{10}\bf DE','\fontsize{10}\bf ACO','\fontsize{10}\bf CCPSOGSA',1);

