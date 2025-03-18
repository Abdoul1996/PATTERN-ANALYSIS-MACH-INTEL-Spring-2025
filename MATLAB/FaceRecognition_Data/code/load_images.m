% Load known faces DB
fa_dir ='../data/FA/';
fa_files = dir(fullfile(fa_dir,"*.TIF"));
fa_images = cell(1, numel(fa_files));
for i = 1:numel(fa_files)
    img_path = fullfile(fa_dir, fa_files(i).name);
    fa_images{i} = imread(img_path);
end

% Load Training images ALL
all_dir ='../data/ALL/';
all_files = dir(fullfile(all_dir,"*.TIF"));
all_images = cell(1, numel(all_files));
for i = 1:numel(all_files)
    img_path = fullfile(all_dir, all_files(i).name);
    all_images{i} = imread(img_path);
end

% Load test images (FB)
fb_dir = '../data/FB/';  % Go up from code/ to data/FB/
fb_files = dir(fullfile(fb_dir, '*.TIF'));
fb_images = cell(1, numel(fb_files));
for i = 1:numel(fb_files)
    img_path = fullfile(fb_dir, fb_files(i).name);
    fb_images{i} = imread(img_path);
end
