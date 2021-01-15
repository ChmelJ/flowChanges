clc;clear all;close all;
addpath('utils');addpath('utils/plotSpread')

file_names = {};


% file_names_tmp = {...
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/1','PC3','exp1','fov1'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/2','PC3','exp1','fov2'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/3','PC3','exp1','fov3'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/4','PC3','exp1','fov1'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/5','PC3','exp1','fov2'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/6','22Rv1','exp1','fov1'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/7','22Rv1','exp1','fov2'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/8','22Rv1','exp1','fov3'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/9','22Rv1','exp1','fov1'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/10','22Rv1','exp1','fov2'
%     'qq\20-12-18 PC3 vs 22Rv1_4days_post_seeding/results_01_05_21__18_34/11','22Rv1','exp1','fov3'
% };
% file_names = [file_names;file_names_tmp];




%%%caliculin 16 17 18
file_names_tmp = {...
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\1','PC3','exp2','fov1','untreated','0'
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\2','PC3','exp2','fov2','untreated','0'
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\3','PC3','exp2','fov1','untreated','0'
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\4','PC3','exp2','fov2','untreated','0'
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\5','PC3','exp2','fov3','untreated','0'
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\6','PC3','exp2','fov4','untreated','0'
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\9','PC3','exp2','fov2','untreated','0'
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\11','PC3','exp2','fov1','untreated','0'
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\12','PC3','exp2','fov2','untreated','0'
%     'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\13','PC3','exp2','fov3','untreated','0'
    'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\16','PC3','exp2','fov1','caliculin',num2str(14*60)
    'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\17','PC3','exp2','fov1','caliculin',num2str(6*60)
    'qq\20-12-10 - Shearstress PC3 calA ruzne dyny\results_01_06_21__18_40\18','PC3','exp2','fov2','caliculin',num2str(14*60)
};
file_names = [file_names;file_names_tmp];




% file_names_tmp = {...
%     'qq\nova_krabice_pc3_beztreatmentu_hezka_data19_11_2020\results_01_06_21__18_21\3','PC3','exp3','fov1'
%     'qq\nova_krabice_pc3_beztreatmentu_hezka_data19_11_2020\results_01_06_21__18_21\4','PC3','exp3','fov2'
%     'qq\nova_krabice_pc3_beztreatmentu_hezka_data19_11_2020\results_01_06_21__18_21\5','PC3','exp3','fov3'
%     'qq\nova_krabice_pc3_beztreatmentu_hezka_data19_11_2020\results_01_06_21__18_21\6','PC3','exp3','fov4'
%     'qq\nova_krabice_pc3_beztreatmentu_hezka_data19_11_2020\results_01_06_21__18_21\7','PC3','exp3','fov1'
%     'qq\nova_krabice_pc3_beztreatmentu_hezka_data19_11_2020\results_01_06_21__18_21\8','PC3','exp3','fov2'
%     'qq\nova_krabice_pc3_beztreatmentu_hezka_data19_11_2020\results_01_06_21__18_21\9','PC3','exp3','fov1'
%     'qq\nova_krabice_pc3_beztreatmentu_hezka_data19_11_2020\results_01_06_21__18_21\10','PC3','exp3','fov2'
%     'qq\nova_krabice_pc3_beztreatmentu_hezka_data19_11_2020\results_01_06_21__18_21\11','PC3','exp3','fov1'
% };
% file_names = [file_names;file_names_tmp];


file_names = cellfun(@(x) replace(x,'qq','G:\Sdílené disky\Quantitative GAČR\data'),file_names,'UniformOutput',false ) ;


resutls = struct([]);
ind = 0;
for file_num = 1:size(file_names,1)
    
    file_name = file_names{file_num,1};
    cell_type = file_names{file_num,2};
    experiment = file_names{file_num,3};
    fov = file_names{file_num,4};
    time = file_names{file_num,6};
    
    tmp = subdir([file_name '/*results.mat']);
    data1 = load(tmp(1).name);
    
    data2 = load([file_name '/results_G.mat']);
    
   
    use_table = readtable([file_name '/table_what_use.xlsx']);
    num_cells_in_cluster = use_table{end,2:end};
    use_table = use_table{1:end-1,2:end};
    
    for cell_num = 1:size(use_table,2)
        
        use_vector = use_table(:,cell_num);
        use_vector = (use_vector>0)&~isnan(use_vector);
        
        if sum(use_vector) ==0
            continue;
        end
        
        ind = ind + 1;
        
        
        pulse_ind  = 1:length(use_vector);
        
        resutls(ind).Gs = data2.G_all{cell_num}(use_vector);
        resutls(ind).Es = data2.E_all{cell_num}(use_vector);
        resutls(ind).nis = data2.ni_all{cell_num}(use_vector);
        resutls(ind).hs = data2.heights_all{cell_num}(use_vector);
        
        tmp=diff(data2.shears_all{cell_num});
        resutls(ind).shears = abs(tmp(use_vector));
        resutls(ind).up_or_down = sign(tmp(use_vector))+0.1*randn(1,length(tmp(use_vector)));
        resutls(ind).pulse_ind = pulse_ind(use_vector)+0.1*randn(1,length(tmp(use_vector)));
        
        
        if str2num(time)==0
            times = 80*randn(size(resutls(ind).pulse_ind));
            
        else
            times =  str2num(time) + ones(size(resutls(ind).pulse_ind))+ 65 + 20* resutls(ind).pulse_ind;
        end
        
        
        resutls(ind).time = times;
        
        
        
        resutls(ind).file_num = num2str(file_num);
        resutls(ind).cell_num = num2str(cell_num);
        resutls(ind).num_cells_in_cluster = num2str(num_cells_in_cluster(cell_num));
        
        resutls(ind).cell_type = cell_type;
        resutls(ind).experiment = experiment;
        resutls(ind).fov = fov;
        
    end
    
    
end

figure()
hold on


for ind = 1:length(resutls)

    times = resutls(ind).time;
    Gs = resutls(ind).Gs;
    
    plot(times,Gs)
    

end