# NetworkTwoSampleTest


Main file:  The main file is different for each simulation/data example.  See details below.

**Reference:**<br><br>
Higher-order accurate two-sample network inference and network hashing
*Meijia Shao, Dong Xia, Yuan Zhang, Qiong Wu and Shuo Chen*<br>
https://arxiv.org/pdf/2208.07573.pdf




CONTENTS:
* This README file contains:
  (i). Step-by-step instructions on how to reproduce the simulation results in Main Paper.
  (ii). Computing resources (at the end of this file).

REMARKS:
* Additional simulation results reported in Supplemental Material document are either intermediate outputs of the code here, or can be easily reproduced by commenting out Line 28 in 'plot_ROC_comparison_hist.m'.
* Data example 2: if you would like to reproduce the results for data example 2, please contact the owner of that data set (see "Data_permission.txt" for more details) before running the code.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Subroutine list:
1. 'generate_A.m'
2. 'graphon.m'
3. 'graphon_mean.m'
4. 'Motif.m'
5. 'Our_method_NetHashing.m'
6. 'Our_method_FastTest.m'
7. 'sort_nodes.m'
8. 'sort_nodes_with_clusters.m'
9. 'NeighborhoodSmoothing.m'
10.'shadedErrorBar.m'

In the above list, files composed by others are:
4.  publically available routine, https://github.com/yzhanghf/NetworkEdgeworthExpansion
9.  publically available routine, https://github.com/yzhanghf/NeighborhoodSmoothing
10. publically available routine, https://github.com/raacampbell/shadedErrorBar


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Preparation: before running our code, please:
1. Place all coding files in main working folder, and create two subfolders named 'result' and 'ROC_result';
2. Place the data files in a subfolder named 'data'.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
To reproduce simulations 1 & 2 results in Sections 5.1 and 5.2:
1. Run 'T_hat_and_CI_coverage_simulation.m', results will output to subfolder 'result';
   (This step takes some time, please be patient.)
2. Run 'plot_CDF_approximation_error.m' to reproduce Figure 1(a);
3. Run 'plot_coverage_heatmap.m' to reproduce Figure 1(b).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
To reproduce simulation 3 results in Section 5.3:
1. Run 'Roc_simulation.m', results will output to subfolder 'ROC_result';
   (This step takes some time, please be patient.  It's recommended to run this step on a computing server.)
2. Run 'plot_Roc_all.m' to reproduce Row 1 of Figure 2;
3. Run 'Roc_simulation2.m', results will output to subfolder 'ROC_result';
   (This step takes some time, please be patient.  It's recommended to run this step on a computing server.)
4. Run 'plot_ROC_comparison_hist.m'  to reproduce Row 2 of Figure 2.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
To reproduce data example 1 results in Section 5.4:
1. Preparation: download data from http://snap.stanford.edu/data/ego-Gplus.html (official website for this publically available data set) and unzip, place individual data files unzipped from 'gplus.tar.gz' under subfolder 'data/gplus', place 'gplus_combined.txt' under subfolder 'data'.
2. Run 'data_preposessing_ego.m' for prepossessing data and it will automatically construct 'data_pre' and 'hash_edge' subfolders;
3. Run 'similarity_matrix_ego.m', it will load the data in 'hash_edge' automatically; 
4. Run 'shortest_distance_ego.m';
5. Run 'plot_ego_similarity_matrix.m' to reproduce Figure 3(a).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
To reproduce data example 2 results in Section 5.5:
0. You need to obtain data from the data owner.  The data is not publically available.  See "Data_permission.txt" for more details.
1. Preparation: place data at path: 'data/TwoSampleNetwork/Final_data.mat'
2. Run 'similarity_matrix_sz.m';
3. Run 'plot_sz_similarity_matrix.m' to reproduce Figure 3(b).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Computing resources:
* Simulations were run on (anonymized university's) computing server, 30 parallel Intel(R) Xeon(R) CPU's, (model specification anonymized), 1GB requested memory for each task, MATLAB R2021a.
* Simulation time cost: reported as part of simulation results.
* Data examples were run on an author's personal computer:  AMD Ryzen 7 3700X 8-Core Processor, 3.59GHz, RAM 16.0 GB, MATLAB R2022a.
* Data examples time cost: less than an hour (Gplus) and just a few minutes (schizophrenia).





