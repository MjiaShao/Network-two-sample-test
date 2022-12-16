clear;
rng(1);
d1 = load("p_value_dis_mat.mat");
d2 = load("mean_conf_dis_mat.mat");
d3 = load("ori_Distance_mat.mat");
d1 = d1.d1;
d2 = d2.d2;
d3 = d3.Distance_mat;
A = d3;
p= sort_nodes({d1,d2},{[2,1]});


fig1 = figure('Visible','on');
imagesc([p{2}]);
hold on;
vert = [1 1; 22 1; 22 22; 1 22]; 
fac = [1 2 3 4]; 
patch('Faces',fac,'Vertices',vert,'FaceColor','none','LineWidth',2,'Edgecolor','r','Linestyle','--');
hold on;
a = 39;
b = 39;
vert = 21+[1 1; 1+a 1; 1+a 1+b; 1 1+b]; 
fac = [1 2 3 4]; 
patch('Faces',fac,'Vertices',vert,'FaceColor','none','LineWidth',2,'Edgecolor','r','Linestyle','--');
a = 38;
b = 38;
vert = 91+[1 1; 1+a 1; 1+a 1+b; 1 1+b]; 
fac = [1 2 3 4]; 
patch('Faces',fac,'Vertices',vert,'FaceColor','none','LineWidth',2,'Edgecolor','r','Linestyle','--');
xt = get(gca, 'XTick');                                             % Original 'XTick' Values
xtlbl = linspace(20, 120, numel(xt));                     % New 'XTickLabel' Vector
set(gca, 'XTick',xt, 'XTickLabel',xtlbl, 'XAxisLocation', 'top')   % Label Ticks
set(gca, 'YTick',xt, 'YTickLabel',xtlbl)   % Label Ticks
ax = gca;
ax.TitleFontSizeMultiplier = 1.5;
set(gca, 'FontSize', 18)
set(gca,'LooseInset',get(gca,'TightInset'));
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5, 5], 'PaperUnits', 'Inches', 'PaperSize', [5, 5])
title(strcat("Similarity matrix"));
pbaspect([1 1 1])
saveas(fig1, "heatmap_distance_ego_CI_estimate.png")


Kall = 3:11;
clustersaved  = zeros(size(A,1),size(A,1),length(Kall));
for Kindex = 1:length(Kall)
    K = Kall(Kindex);
    A = d3;
    A = 0.1.^(A-1);  A = A - diag(diag(A));    
    d = diag(sum(A,1));
    L = d^(-0.5)*A*d^(-0.5);
    [u,s,v] = svd(L);
    uk = u(:,1:K);
    cluster_result1 = kmeans(uk,K);
    p= sort_nodes_with_clusters({d1,d2,A},{[3,1]},cluster_result1);
    clustersaved(:,:,Kindex) =  NeighborhoodSmoothing(p{3}); 
end
fig2 = figure('Visible','on');
hax =  axes;
imagesc([clustersaved(:,:,1),clustersaved(:,:,2),clustersaved(:,:,3); ...
    clustersaved(:,:,4),clustersaved(:,:,5),clustersaved(:,:,6); ...
   clustersaved(:,:,7),clustersaved(:,:,8),clustersaved(:,:,9)]);
hold on;
l1 = size(A,1);
l2 = size(A,1);
linewidth1 = 2;
line([l1 l1],get(hax,'YLim'),'Color',[1 0 0],'LineWidth',linewidth1);
line(get(hax,'XLim'),[l1 l1],'Color',[1 0 0],'LineWidth',linewidth1);
line(get(hax,'XLim'),[l1+l2 l1+l2],'Color',[1 0 0],'LineWidth',linewidth1);
line([l1+l2 l1+l2],get(hax,'YLim'),'Color',[1 0 0],'LineWidth',linewidth1);
hline1=refline([0 l1]);
hline2=refline([0 l1+l2]);
hline1.Color = 'r';
hline2.Color = 'r';
xt = get(gca, 'XTick');                                             % Original 'XTick' Values
set(gca, 'XTick',[])   % Label Ticks
set(gca, 'YTick',[])   % Label Ticks
ax = gca;
ax.TitleFontSizeMultiplier = 1.3;
set(gca, 'FontSize', 18)
hold on;
colorletter =	'#00FF00';
fontsize1 = 30;
text(6+24,60,'\Gamma=1', 'Color',colorletter, 'FontSize', fontsize1,'fontweight','bold');
text(6+24,190,'\Gamma=4', 'Color',colorletter, 'FontSize', fontsize1,'fontweight','bold');
text(6+24,320,'\Gamma=7', 'Color',colorletter, 'FontSize', fontsize1,'fontweight','bold');
text(136+24,60,'\Gamma=2', 'Color',colorletter, 'FontSize', fontsize1,'fontweight','bold');
text(136+24,190,'\Gamma=5', 'Color',colorletter, 'FontSize', fontsize1,'fontweight','bold');
text(136+24,320,'\Gamma=8', 'Color',colorletter, 'FontSize', fontsize1,'fontweight','bold');
text(266+24,60,'\Gamma=3', 'Color',colorletter, 'FontSize', fontsize1,'fontweight','bold');
text(266+24,190,'\Gamma=6', 'Color',colorletter, 'FontSize', fontsize1,'fontweight','bold');
text(266+24,320,'\Gamma=9', 'Color',colorletter, 'FontSize', fontsize1,'fontweight','bold');
set(gca,'LooseInset',get(gca,'TightInset'));
set(gcf, 'Units', 'Inches', 'Position', [0, 0, 5, 5], 'PaperUnits', 'Inches', 'PaperSize', [5, 5])
title(["Block model fitting results", "with different block number \Gamma's"]);
pbaspect([1 1 1]);
saveas(fig2, sprintf("heatmap_distance_ego_kmeans_adjacency.png"));

