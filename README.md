# NetworkTwoSampleTest


Reference: Higher-order accurate two-sample network inference and network hashing,
by Meijia Shao, Dong Xia, Yuan Zhang, Qiong Wu and Shuo Chen
https://arxiv.org/pdf/2208.07573.pdf


Functions which were used in the paper presents below:
1. 'generate_A.m'
2. 'graphon.m'
3. 'graphon_mean.m'
4. 'Motif.m'
5. 'Our_method_NetHashing.m'
6. 'Our_method_FastTest.m'
7. 'sort_nodes.m'
8. 'sort_nodes_with_clusters.m'
9. 'NeighborhoodSmoothing.m'

Before you get all the result plots:
1. Please save all the coding files in the same folder and construct two subfolders as 'result' and 'ROC_result';
2. Please save the data in the subfolder as 'data'.

To get simulation results plots in the section 5.1 and 5.2 in the paper:
1. To run 'T_hat_and_CI_coverage_simulation.m' and save all the result files in you local file folder 'result';
2. To run 'plot_CDF_approximation_error.m' in order to get Figure 1(a);
3. To run 'plot_coverage_heatmap.m' in order to get Figure 1(b).

To get simulation result plots in the section 5.3
1. To run 'Roc_simulation.m' and save those results in the local file folder 'ROC_result';
2. To run 'plot_Roc_all.m' in order to get the first row of Figure 2;
3. To run 'Roc_simulation2.m' and save those results in the local file folder 'ROC_result';
4. To run 'plot_ROC_comparison_hist.m' to get the second row of Figure 2.

To get the result plots in the section 5.3
1. (load data of example1 from 'data\gplus' folder and 'gplus_combined.txt' in 'data' folder)(Not run); 
2. To run 'data_preposessing_ego.m' for prepossessing data and it will automatically construct a 'data_pre' and 'hash_edge' folder;
3. To run 'similarity_matrix_ego.m' and it will load the data in 'hash_edge' automatically; 
4. To run 'shortest_distance_ego.m';
5. To run 'plot_ego_similarity_matrix.m' in order to get the plot in the Figure 3(a).

To get the result plots in the section 5.4 
1. To run 'similarity_matrix_sz.m' in order to load data example2 from 'data\TwoSampleNetwork\Final_data.mat' and did data prepossessing;
2. To run 'plot_sz_similarity_matrix.m' in order to get the plot in the Figure 3(b).