
%path = '/usr/share/fsl/5.0/bin/flirt -in /home/arya/Downloads/newData/*';

% For tmax
subjList=dir('/home/arya/Downloads/newData/x*');
for subjNum = 1:length(subjList)
   subjPath = ([subjList(subjNum).folder '/' subjList(subjNum).name]);
   in=[subjPath '/fits_' subjList(subjNum).name(1:7) '/tmax.nii.gz'];disp(in)
   out=[subjPath '/fits_' subjList(subjNum).name(1:7) '/tmax2MNI.nii.gz'];disp    xfm=([subjPath '/s1/preproc2.feat/reg/example_func2standard.mat']);
   ref = ([subjPath '/s1/preproc2.feat/reg/standard.nii.gz']);
   %disp(in)
   unix(['/usr/share/fsl/5.0/bin/flirt -in ' in ' -applyxfm -init ' xfm ' -out ' out ' -paddingsize 0.0 -interp trilinear -ref ' ref])       
end

% For ymax
subjList=dir('/home/arya/Downloads/newData/x*');
 for subjNum = 1:length(subjList)
   subjPath = ([subjList(subjNum).folder '/' subjList(subjNum).name]);
   in=[subjPath '/fits_' subjList(subjNum).name(1:7) '/ymax.nii.gz'];disp(in)
   out=[subjPath '/fits_' subjList(subjNum).name(1:7) '/ymax2MNI.nii.gz'];disp
   xfm=([subjPath '/s1/preproc2.feat/reg/example_func2standard.mat']);
   ref = ([subjPath '/s1/preproc2.feat/reg/standard.nii.gz']);
   %disp(in)
   unix(['/usr/share/fsl/5.0/bin/flirt -in ' in ' -applyxfm -init ' xfm ' -out ' out ' -paddingsize 0.0 -interp trilinear -ref ' ref])  
%     
end

% For offset
subjList=dir('/home/arya/Downloads/newData/x*');
for subjNum = 1:length(subjList)
   subjPath = ([subjList(subjNum).folder '/' subjList(subjNum).name]);
   in=[subjPath '/fits_' subjList(subjNum).name(1:7) '/offset.nii.gz'];disp(in)
   out=[subjPath '/fits_' subjList(subjNum).name(1:7) '/offset2MNI.nii.gz'];disp
   xfm=([subjPath '/s1/preproc2.feat/reg/example_func2standard.mat']);
   ref = ([subjPath '/s1/preproc2.feat/reg/standard.nii.gz']);
   %disp(in)
  unix(['/usr/share/fsl/5.0/bin/flirt -in ' in ' -applyxfm -init ' xfm ' -out ' out ' -paddingsize 0.0 -interp trilinear -ref ' ref])  
    
end 


% For residuals
for subjNum = 1:length(subjList)
   subjPath = ([subjList(subjNum).folder '/' subjList(subjNum).name]);
   in=[subjPath '/fits_' subjList(subjNum).name(1:7) '/residuals.nii.gz'];
   out=[subjPath '/fits_' subjList(subjNum).name(1:7) '/residuals2MNI.nii.gz'];
   xfm=([subjPath '/s1/preproc2.feat/reg/example_func2standard.mat']);
   ref = ([subjPath '/s1/preproc2.feat/reg/standard.nii.gz']);
   %disp(in)
   unix(['/usr/share/fsl/5.0/bin/flirt -in ' in ' -applyxfm -init ' xfm ' -out ' out ' -paddingsize 0.0 -interp trilinear -ref ' ref])  
    
end

%For shape

for subjNum = 1:length(subjList)
   subjPath = ([subjList(subjNum).folder '/' subjList(subjNum).name]);
   in=[subjPath '/fits_' subjList(subjNum).name(1:7) '/shape.nii.gz'];
   out=[subjPath '/fits_' subjList(subjNum).name(1:7) '/shape2MNI.nii.gz'];
   xfm=([subjPath '/s1/preproc2.feat/reg/example_func2standard.mat']);
   ref = ([subjPath '/s1/preproc2.feat/reg/standard.nii.gz']);
   %disp(in)
   unix(['/usr/share/fsl/5.0/bin/flirt -in ' in ' -applyxfm -init ' xfm ' -out ' out ' -paddingsize 0.0 -interp trilinear -ref ' ref])  
    
end
