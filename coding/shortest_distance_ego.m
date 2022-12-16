
Files = dir("~\hash_edge");
isdir = [Files.isdir];
indexf = isdir ==0;
Filesf = Files(indexf);
target = zeros(1,length(Filesf));
for i = 1:length(Filesf)
    parts = strsplit(Filesf(i).name,'.');
    target(i) = str2double(cell2mat(parts(1)));
end


% read in raw data
raw_edge_list = readmatrix('~/data/gplus_combined.txt');
raw_edge_list = floor(raw_edge_list);

% set up a dictionary
dict_keys = sort(unique(raw_edge_list(:)));
dict_keys = dict_keys';
dict_values = 1:length(dict_keys);
M = containers.Map(dict_keys, dict_values);


% translate edge list
trans_edge_list = zeros(size(raw_edge_list));
for(ii = 1:size(trans_edge_list,1))
	temp = raw_edge_list(ii,:);
	trans_edge_list(ii,:) = [M(temp(1)), M(temp(2))];
end
writematrix(trans_edge_list, 'translated_edge_list.csv', 'Delimiter',',');

trans_edge_list = readmatrix('translated_edge_list.csv');
GGG = graph(trans_edge_list(:,1),trans_edge_list(:,2));

% translate target
trans_target = zeros(size(target));
for(ii = 1:length(target))
	trans_target(ii) = M(target(ii));
end

sss = trans_target;
ttt = trans_target;
Distance_mat = distances(GGG,sss,ttt);
save("ori_Distance_mat","Distance_mat")
