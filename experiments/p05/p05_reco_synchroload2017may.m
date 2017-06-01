function p05_reco_synchroload2017may(nums, doreco, print_field)

if nargin < 1
    nums = [];
end
if nargin < 2
    doreco = 0;
end
if nargin < 3
    print_field = '';
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Parameter sets to loop over %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Default %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nn = 0;
default.visualOutput = 0;
default.interactive_determination_of_rot_axis = 0;
default.interactive_determination_of_rot_axis_tilt = 0;
default.raw_roi = [];
default.scan_path = '';
default.raw_bin = 1;
default.excentric_rot_axis = 0;
default.crop_at_rot_axis = 0;
default.stitch_projections = 0; 
default.proj_range = 1; 
default.ref_range = 1; 
default.correlation_method =  'ssim-ml';
default.do_phase_retrieval = 0;
default.phase_retrieval_method = 'tie';'qp';'qpcut';
default.phase_retrieval_reg_par = 2.5; 
default.phase_retrieval_bin_filt = 0.15; 
default.phase_retrieval_cutoff_frequ = 1 * pi; 
default.phase_padding = 1; 
default.do_tomo = 1;
default.fbp_filter_padding = 0;
default.ring_filter = 1;
default.dec_levels = 7;
default.wname = 'db25';
default.sigma = 2.4;
default.rot_axis_offset = [];
default.rot_axis_tilt = 0.001;
default.parfolder = '';
default.write_to_scratch = 0;
default.write_flatcor = 1;
default.write_phase_map = 0; 
default.write_sino = 0; 
default.write_sino_phase = 0; 
default.write_reco = 1; 
default.write_float = 1; 
default.write_float_binned = 1; 
default.write_8bit = 1;
default.write_8bit_binned = 1;
default.write_16bit = 0; 
default.subfolder_reco = '';
default.gpu_ind = 1;

%% Data sets %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 2017 May
raw = '/asap3/petra3/gpfs/p05/2017/data/11003950/raw/';

%% Regular section
default.write_flatcor = 1;
default.write_8bit = 1;
default.write_8bit_binned = 1;

nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn01_48L_PEEK_12w_b'];
nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn01_48L_PEEK_12w_c'];
nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn02_46R_PEEK_12w_a'];
nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn02_46R_PEEK_12w_b'];
nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn03_12R_PEEK_12w_a'];
nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn03_12R_PEEK_12w_b'];
nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn04_30R_PEEK_8w_a'];
nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn04_30R_PEEK_8w_b'];
nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn05_41R_PEEK_12w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn11_53R_Mg5Gd_12w_load_broken'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_02'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_04'];para(nn).ref_range = [1:135, 137:162];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_06'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_08'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_10'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_12'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_14'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_16'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_18'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_20'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_22'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_24_noload'];
default.raw_roi = [1211 2410];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn14_48L_PEEK_12w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn14_48L_PEEK_12w_b'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn15_29R_PEEK_8w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn15_29R_PEEK_8w_b'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn16_43R_PEEK_12w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn16_43R_PEEK_12w_b'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn17_25R_PEEK_8w_a'];
default.raw_roi = [];

% Radio after load increase before tomography
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_01'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_03'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_05'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_07'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_09'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_11'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_13'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_15'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_17'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_19'];para(nn).do_tomo = 0;
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_21'];para(nn).do_tomo = 0;

% CPD straw II
default.raw_roi = [ 211 1420];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_77L_Mg5Gd_8w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_77L_Mg5Gd_8w_b'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_80L_Mg5Gd_8w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_80L_Mg5Gd_8w_b'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_87L_Mg5Gd_4w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_87L_Mg5Gd_4w_b'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_88R_Mg5Gd_4w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_88R_Mg5Gd_4w_b'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_99L_Mg5Gd_4w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn22_99L_Mg5Gd_4w_b'];

% CPD straw II:top
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn23_28R_PEEK_8w_a'];
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn23_28R_PEEK_8w_b'];

%% TEST SECTION
default.write_flatcor = 0;
default.write_8bit = 0;
default.write_8bit_binned = 0;
default.raw_roi = [265 1464];

nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn01_48L_PEEK_12w_b'];
para(nn).do_phase_retrieval = 1;para(nn).phase_retrieval_method = 'tie';para(nn).phase_retrieval_reg_par = 2.5; 

nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn01_48L_PEEK_12w_b'];
para(nn).parfolder = 'fbp_fft_wo_symmetric_option';

nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn01_48L_PEEK_12w_b'];
para(nn).do_phase_retrieval = 1;para(nn).phase_retrieval_method = 'tie';para(nn).phase_retrieval_reg_par = 2.5; 
para(nn).parfolder = 'fbp_fft_wo_symmetric_option';

nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn01_48L_PEEK_12w_b'];
para(nn).do_phase_retrieval = 1;para(nn).phase_retrieval_method = 'tie';para(nn).phase_retrieval_reg_par = 2.5; 
para(nn).parfolder = 'fbp_fft_wo_symmetric_option__nopadding';
para(nn).phase_padding = 0;
para(nn).fbp_filter_padding = 0;

nn = nn + 1;para(nn) = default;para(nn).scan_path = [raw 'syn01_48L_PEEK_12w_b'];
para(nn).parfolder = 'fbp_fft_with_symmetric_option';

%% TEST SECTION
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).raw_bin = 1;
para(nn).do_phase_retrieval = 1;
para(nn).phase_retrieval_method = 'tie';
para(nn).phase_retrieval_reg_par = 2.5; 
para(nn).phase_retrieval_bin_filt = 0.15; 
para(nn).phase_retrieval_cutoff_frequ = 1 * pi; 
para(nn).phase_padding = 1; 
para(nn).write_8bit = 1;
para(nn).write_8bit_binned = 1;

nn = nn + 1;para(nn) = para(nn-1);
para(nn).phase_retrieval_reg_par = 1.5; 

nn = nn + 1;para(nn) = para(nn-1);
para(nn).phase_retrieval_reg_par = 3.5; 

nn = nn + 1;para(nn) = para(nn-1); 
para(nn).phase_retrieval_method = 'qp';
para(nn).phase_retrieval_reg_par = 2.5; 

nn = nn + 1;para(nn) = para(nn-1); 
para(nn).phase_retrieval_method = 'qpcut';

%% TEST SECTION

% Combined wavelet FFT
nn = nn + 1;para(nn) = default; para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).raw_roi = [299 1492];
para(nn).raw_bin = 1;
para(nn).do_phase_retrieval = 0;
para(nn).write_8bit = 0;
para(nn).write_8bit_binned = 0;
para(nn).write_sino = 0;
para(nn).write_flatcor = 0;
para(nn).ring_filter_method = 'wavelet-fft';
para(nn).wname = 'db25';
para(nn).sigma = 2.4;
para(nn).dec_levels = 1;
para(nn).parfolder = sprintf('test_ringfilt_wavelet-fft_decNum%u', para(nn).dec_levels);

nn = nn + 1;para(nn) = para(nn-1); para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).dec_levels = para(nn-1).dec_levels + 1;
para(nn).parfolder = sprintf('test_ringfilt_wavelet-fft_decNum%u', para(nn).dec_levels);

nn = nn + 1;para(nn) = para(nn-1); para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).dec_levels = para(nn-1).dec_levels + 1;
para(nn).parfolder = sprintf('test_ringfilt_wavelet-fft_decNum%u', para(nn).dec_levels);

nn = nn + 1;para(nn) = para(nn-1); para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).dec_levels = para(nn-1).dec_levels + 1;
para(nn).parfolder = sprintf('test_ringfilt_wavelet-fft_decNum%u', para(nn).dec_levels);

nn = nn + 1;para(nn) = para(nn-1); para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).dec_levels = para(nn-1).dec_levels + 1;
para(nn).parfolder = sprintf('test_ringfilt_wavelet-fft_decNum%u', para(nn).dec_levels);

nn = nn + 1;para(nn) = para(nn-1); para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).dec_levels = para(nn-1).dec_levels + 1;
para(nn).parfolder = sprintf('test_ringfilt_wavelet-fft_decNum%u', para(nn).dec_levels);

nn = nn + 1;para(nn) = para(nn-1); para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).dec_levels = para(nn-1).dec_levels + 1;
para(nn).parfolder = sprintf('test_ringfilt_wavelet-fft_decNum%u', para(nn).dec_levels);

% Simple JM
nn = nn + 1;para(nn) = para(nn-1); para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).ring_filter_method = 'jm';
para(nn).parfolder = 'test_ringfilt_jm';

% None
nn = nn + 1;para(nn) = para(nn-1); para(nn).scan_path = [raw 'syn13_55L_Mg10Gd_12w_load_00'];
para(nn).ring_filter = 0;
para(nn).parfolder = 'test_ringfilt_none';


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
p05_reco_loop( nums, doreco, print_field, para)
