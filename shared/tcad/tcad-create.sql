create database tcadb
go

use tcadb
go

drop table if exists Arbitration
go
create table Arbitration (
prop_id	bigint,
prop_val_yr	numeric(5),
geo_id	varchar(50),
ref_id1	varchar(25),
ref_id2	varchar(25)
)
go

drop table if exists country
go
create table country (
country_cd	varchar(5),
country_name	varchar(50)
)
go

drop table if exists UDI_7_8
go
create table UDI_7_8 (
Original_PID	bigint,
Owner_ID	bigint,
Owner_Name	bigint,
New_PID	bigint,
UDI_Group	bigint
)
go

drop table if exists LAWSUIT
go
create table LAWSUIT (
prop_id	bigint,
prop_val_yr	numeric(5),
geo_id	varchar(50),
ref_id1	varchar(25),
ref_id2	varchar(25)
)
go

drop table if exists ARB
go
create table ARB (
prop_id	bigint,
prop_val_yr	numeric(5),
geo_id	varchar(50),
ref_id1	varchar(25),
ref_id2	varchar(25),
ARB_Status	varchar(10)
)
go

drop table if exists AGENT
go
create table AGENT(
agent_id	bigint,
agent_name	varchar(70),
agent_addr_line1	varchar(60),
agent_addr_line2	varchar(60),
agent_addr_line3	varchar(60),
agent_city	varchar(50),
agent_state	varchar(50),
agent_country	varchar(5),
agent_zip	varchar(5),
agent_zip_cass	varchar(4),
agent_zip_rt	varchar(2)
)
go

drop table if exists LAND_DET
go
create table LAND_DET
(
prop_id	bigint,
prop_val_yr	numeric(4),
land_seg_id	bigint,
land_type_cd	varchar(10),
land_type_desc	varchar(25),
state_cd	varchar(5),
land_seg_homesite	varchar(1),
size_acres	numeric(14),
size_square_feet	numeric(14),
effective_front	numeric(14),
effective_depth	numeric(14),
mkt_ls_method	varchar(5),
mkt_ls_class	varchar(10),
land_seg_mkt_val	numeric(14),
ag_apply	varchar(1),
ag_ls_method	varchar(5),
ag_ls_class	varchar(10),
ag_value	numeric(14),
land_homesite_pct	numeric(15)
)
go

drop table if exists IMP_ATR
go
create table IMP_ATR (
prop_id	bigint,
prop_val_yr	numeric(4),
imprv_id	bigint,
imprv_det_id	bigint,
imprv_attr_id	bigint,
imprv_attr_desc	varchar(25),
imprv_attr_cd	varchar(10)
)
go

drop table if exists IMP_DET
go
create table IMP_DET (
prop_id	bigint,
prop_val_yr	numeric(4),
imprv_id	bigint,
imprv_det_id	bigint,
Imprv_det_type_cd	varchar(10),
Imprv_det_type_desc	varchar(25),
Imprv_det_class_cd	varchar(10),
yr_built	numeric(4),
depreciation_yr	numeric(4),
imprv_det_area	numeric(30,10),
imprv_det_val	numeric(14),
sketch_cmds	varchar(1500)
)
go

drop table if exists IMP_INFO
go
create table IMP_INFO (
prop_id	bigint,
prop_val_yr	numeric(4),
imprv_id	bigint,
imprv_type_cd	varchar(10),
imprv_type_desc	varchar(25),
imprv_state_cd	varchar(5),
imprv_homesite	varchar(1),
imprv_val	numeric(14),
imprv_homesite_pct	numeric(30,10),
omitted	varchar(1),
omitted_imprv_val	numeric(15)
)
go

drop table if exists STATE_CD
go
create table STATE_CD (
state_cd	varchar(10),
state_cd_description	varchar(50),
ptd_state_cd	varchar(10),
ptd_state_cd_description	varchar(50),
state_cd_year	varchar(5)
)
go

drop table if exists ABS_SUBD
go
create table ABS_SUBD (
abs_subdv_cd	varchar(10),
abs_subdv_desc	varchar(40)
)
go

drop table if exists TOTALS
go
create table TOTALS (
entity_id	bigint,
entity_cd	varchar(5),
entity_name	varchar(70),
land_hstd_val	numeric(15),
land_non_hstd_val	numeric(15),
imprv_hstd_val	numeric(15),
imprv_non_hstd_val	numeric(15),
ag_use_val	numeric(15),
tim_use_val	numeric(15),
ag_market_val	numeric(15),
tim_market_val	numeric(15),
taxable_val	numeric(15),
mineral_val	numeric(15),
personal_val	numeric(15),
auto_val	numeric(15),
real_mobile_val	numeric(15),
num_real_mobile	bigint,
num_personal	bigint,
num_mineral	bigint,
num_auto	bigint,
num_records	bigint,
market_value	numeric(15),
hs_cap_count	bigint,
hs_cap	numeric(15),
hs_count	bigint,
hs_local_amount	numeric(15),
hs_state_amount	numeric(15),
ov65_count	bigint,
ov65_amt	numeric(15),
dp_count	bigint,
dp_amt	numeric(15),
dv_count	bigint,
dv_amt	numeric(15),
ab_count	bigint,
ab_amt	numeric(15),
fr_count	bigint,
fr_amt	numeric(15),
pc_count	bigint,
pc_amt	numeric(15),
ex366_count	bigint,
ex366_amt	numeric(15),
ht_count	bigint,
ht_amt	numeric(15),
so_count	bigint,
so_amt	numeric(15),
ex_count	bigint,
ex_amt	numeric(15),
ch_count	bigint,
ch_amt	numeric(15),
ag_late_count	bigint,
ag_late_loss	numeric(15),
freeport_late_count	bigint,
freeport_late_loss	numeric(15),
lve_count	bigint,
lve_amt	numeric(15),
year	bigint,
sup_num	bigint,
eco_count	bigint,
eco_amt	numeric(15),
ag_use_val_ne	numeric(15),
ag_use_val_ex	numeric(15),
ag_market_ne	numeric(15),
ag_market_ex	numeric(15),
timber_use_ne	numeric(15),
timber_use_ex	numeric(15),
timber_market_ne	numeric(15),
timber_market_ex	numeric(15),
en_count	bigint,
en_amt	numeric(15),
dataset_id	numeric(15),
chodo_count	bigint,
chodo_amt	numeric(15),
lih_count	bigint,
lih_amt	numeric(15),
git_count	bigint,
git_amt	numeric(15),
dvhs_count	bigint,
dvhs_amt	numeric(15),
tax_increment_imprv_val	numeric(15),
tax_increment_land_val	numeric(15),
weed_taxable_acres	numeric(15),
omitted_imprv_hstd_val	numeric(15),
omitted_imprv_non_hstd_val	numeric(15),
clt_count	bigint,
clt_amt	numeric(15),
dvhss_count	bigint,
dvhss_amt	numeric(15),
ex_xd_count	bigint,
ex_xd_amt	numeric(15),
ex_xf_count	bigint,
ex_xf_amt	numeric(15),
ex_xg_count	bigint,
ex_xg_amt	numeric(15),
ex_xh_count	bigint,
ex_xh_amt	numeric(15),
ex_xi_count	bigint,
ex_xi_amt	numeric(15),
ex_xj_count	bigint,
ex_xj_amt	numeric(15),
ex_xl_count	bigint,
ex_xl_amt	numeric(15),
ex_xm_count	bigint,
ex_xm_amt	numeric(15),
ex_xn_count	bigint,
ex_xn_amt	numeric(15),
ex_xo_count	bigint,
ex_xo_amt	numeric(15),
ex_xp_count	bigint,
ex_xp_amt	numeric(15),
ex_xq_count	bigint,
ex_xq_amt	numeric(15),
ex_xr_count	bigint,
ex_xr_amt	numeric(15),
ex_xs_count	bigint,
ex_xs_amt	numeric(15),
ex_xt_count	bigint,
ex_xt_amt	numeric(15),
ex_xu_count	bigint,
ex_xu_amt	numeric(15),
ex_xv_count	bigint,
ex_xv_amt	numeric(15),
ex_xa_count	bigint,
ex_xa_amt	numeric(15),
ppv_count	bigint,
ppv_amt	numeric(15),
dvch_count	bigint,
dvch_amt	numeric(15),
dvchs_count	bigint,
dvchs_amt	numeric(15),
masss_count	bigint,
masss_amt	numeric(15),
pp_late_interstate_allocation_count	bigint,
pp_late_interstate_allocation_val	numeric(15)
)
go

drop table if exists ENTITY
go
create table ENTITY (
entity_id	bigint,
entity_cd	varchar(5)
)
go

drop table if exists PROP_ENT
go
create table PROP_ENT (
prop_id	bigint,
prop_val_yr	numeric(5),
sup_num	bigint,
owner_id	bigint,
entity_id	bigint,
entity_cd	varchar(10),
entity_name	varchar(50),
entity_xref_id	varchar(20),
filler	varchar(15),
assessed_val	numeric(15),
taxable_val	numeric(15),
ab_amt	numeric(15),
en_amt	numeric(15),
fr_amt	numeric(15),
ht_amt	numeric(15),
pro_amt	numeric(15),
pc_amt	numeric(15),
so_amt	numeric(15),
ex366_amt	numeric(15),
hs_amt	numeric(15),
ov65_amt	numeric(15),
dp_amt	numeric(15),
dv_amt	numeric(15),
ex_amt	numeric(15),
ch_amt	numeric(15),
market_value	numeric(15),
appraised_value	numeric(15),
hs_cap	numeric(15),
ag_late_loss	numeric(15),
freeport_late_loss	numeric(15),
hs_state_amt	numeric(15),
hs_local_amt	numeric(15),
land_hstd_val	numeric(15),
land_non_hstd_val	numeric(15),
imprv_hstd_val	numeric(15),
imprv_non_hstd_val	numeric(15),
ag_use_val	numeric(15),
ag_market_val	numeric(15),
tim_use_val	numeric(15),
tim_market_val	numeric(15),
partial_entity	varchar(1),
freeze_yr	numeric(4),
freeze_ceiling	numeric(15),
freeze_transfer_flag	varchar(1),
freeze_transfer_date	varchar(25),
freeze_previous_tax	numeric(15),
freeze_previous_tax_unfrozen	numeric(15),
freeze_transfer_percentage	numeric(37,18),
lve_amt	numeric(15),
eco_amt	numeric(15),
ag_use_val_ne	numeric(15),
ag_use_val_ex	numeric(15),
ag_market_ne	numeric(15),
ag_market_ex	numeric(15),
timber_use_ne	numeric(15),
timber_use_ex	numeric(15),
timber_market_ne	numeric(15),
timber_market_ex	numeric(15),
new_val_hs	numeric(15),
new_val_nhs	numeric(15),
new_val_p	numeric(15),
new_val_taxable	numeric(15),
dataset_id	numeric(15),
chodo_amt	numeric(15),
ent_pct_land_hs	numeric(15),
ent_pct_land_nonhs	numeric(15),
ent_pct_imprv_hs	numeric(15),
ent_pct_imprv_nonhs	numeric(15),
ent_pct_ag_use	numeric(15),
ent_pct_ag_mkt	numeric(15),
ent_pct_tim_use	numeric(15),
ent_pct_tim_mkt	numeric(15),
ent_pct_pers	numeric(15),
ent_pct_min	numeric(15),
ent_pct_auto	numeric(15),
lih_amt	numeric(15),
git_amt	numeric(15),
dvhs_amt	numeric(15),
tax_increment_flag	varchar(1),
tax_increment_imprv_val	numeric(15),
tax_increment_land_val	numeric(15),
weed_taxable_acres	numeric(15),
hs_allocation_factor	numeric(15),
ov65_allocation_factor	numeric(15),
ov65s_allocation_factor	numeric(15),
dp_allocation_factor	numeric(15),
dps_allocation_factor	numeric(15),
dv1_allocation_factor	numeric(15),
dv1s_allocation_factor	numeric(15),
dv2_allocation_factor	numeric(15),
dv2s_allocation_factor	numeric(15),
dv3_allocation_factor	numeric(15),
dv3s_allocation_factor	numeric(15),
dv4_allocation_factor	numeric(15),
dv4s_allocation_factor	numeric(15),
dvhs_allocation_factor	numeric(15),
ex_allocation_factor	numeric(15),
ab_allocation_factor	numeric(15),
en_allocation_factor	numeric(15),
fr_allocation_factor	numeric(15),
ht_allocation_factor	numeric(15),
pro_allocation_factor	numeric(15),
pc_allocation_factor	numeric(15),
so_allocation_factor	numeric(15),
ex366_allocation_factor	numeric(15),
ch_allocation_factor	numeric(15),
eco_allocation_factor	numeric(15),
chodo_allocation_factor	numeric(15),
lih_allocation_factor	numeric(15),
git_allocation_factor	numeric(15),
freeze_exmpt_type_cd	varchar(5),
freeze_transfer_exmpt_type_cd	varchar(5),
tax_increment_zone_cd	varchar(10),
tax_increment_zone_desc	varchar(50),
omitted_imprv_hstd_val	numeric(15),
omitted_imprv_non_hstd_val	numeric(15),
clt_amt	numeric(15),
clt_allocation_factor	numeric(15),
dvhss_amt	numeric(15),
dvhss_allocation_factor	numeric(15),
homestead_group_exemption_factor	numeric(15),
ex_xd_amt	numeric(15),
ex_xd_allocation_factor	numeric(15),
ex_xf_amt	numeric(15),
ex_xf_allocation_factor	numeric(15),
ex_xg_amt	numeric(15),
ex_xg_allocation_factor	numeric(15),
ex_xh_amt	numeric(15),
ex_xh_allocation_factor	numeric(15),
ex_xi_amt	numeric(15),
ex_xi_allocation_factor	numeric(15),
ex_xj_amt	numeric(15),
ex_xj_allocation_factor	numeric(15),
ex_xl_amt	numeric(15),
ex_xl_allocation_factor	numeric(15),
ex_xm_amt	numeric(15),
ex_xm_allocation_factor	numeric(15),
ex_xn_amt	numeric(15),
ex_xn_allocation_factor	numeric(15),
ex_xo_amt	numeric(15),
ex_xo_allocation_factor	numeric(15),
ex_xp_amt	numeric(15),
ex_xp_allocation_factor	numeric(15),
ex_xq_amt	numeric(15),
ex_xq_allocation_factor	numeric(15),
ex_xr_amt	numeric(15),
ex_xr_allocation_factor	numeric(15),
ex_xs_amt	numeric(15),
ex_xs_allocation_factor	numeric(15),
ex_xt_amt	numeric(15),
ex_xt_allocation_factor	numeric(15),
ex_xu_amt	numeric(15),
ex_xu_allocation_factor	numeric(15),
ex_xv_amt	numeric(15),
ex_xv_allocation_factor	numeric(15),
ex_xa_amt	numeric(15),
ex_xa_allocation_factor	numeric(15),
lve_allocation_factor	numeric(15),
ppv_amt	numeric(15),
ppv_allocation_factor	numeric(15),
dvch_amt	numeric(15),
dvch_allocation_factor	numeric(15),
dvchs_amt	numeric(15),
dvchs_allocation_factor	numeric(15),
masss_amt	numeric(15),
masss_allocation_factor	numeric(15),
pp_late_interstate_allocation_val	numeric(15)
)
go

drop table if exists PROP
go
create table PROP (
prop_id	bigint,
prop_type_cd	varchar(5),
prop_val_yr	numeric(5),
sup_num	bigint,
sup_action	varchar(2),
sup_cd	varchar(10),
sup_desc	varchar(500),
geo_id	varchar(50),
py_owner_id	bigint,
py_owner_name	varchar(70),
partial_owner	varchar(1),
udi_group	bigint,
filler	varchar(2),
py_addr_line1	varchar(60),
py_addr_line2	varchar(60),
py_addr_line3	varchar(60),
py_addr_city	varchar(50),
py_addr_state	varchar(50),
py_addr_country	varchar(5),
py_addr_zip	varchar(5),
py_addr_zip_cass	varchar(4),
py_addr_zip_rt	varchar(2),
py_confidential_flag	varchar(1),
py_address_suppress_flag	varchar(1),
filler1	varchar(20),
py_addr_ml_deliverable	varchar(1),
filler2	varchar(27),
situs_street_prefx	varchar(10),
situs_street	varchar(50),
situs_street_suffix	varchar(10),
situs_city	varchar(30),
situs_zip	varchar(10),
legal_desc	varchar(255),
legal_desc2	varchar(255),
legal_acreage	numeric(16),
abs_subdv_cd	varchar(10),
hood_cd	varchar(10),
block	varchar(50),
tract_or_lot	varchar(50),
land_hstd_val	numeric(15),
land_non_hstd_val	numeric(15),
imprv_hstd_val	numeric(15),
imprv_non_hstd_val	numeric(15),
ag_use_val	numeric(15),
ag_market	numeric(15),
timber_use	numeric(15),
timber_market	numeric(15),
appraised_val	numeric(15),
ten_percent_cap	numeric(15),
assessed_val	numeric(15),
filler3	varchar(20),
arb_protest_flag	varchar(1),
filler4	bigint,
deed_book_id	varchar(20),
deed_book_page	varchar(20),
deed_dt	varchar(25),
mortgage_co_id	bigint,
mortage_co_name	varchar(70),
mortgage_acct_id	varchar(50),
jan1_owner_id	bigint,
jan1_owner_name	varchar(70),
jan1_addr_line1	varchar(60),
jan1_addr_line2	varchar(60),
jan1_addr_line3	varchar(60),
jan1_addr_city	varchar(50),
jan1_addr_state	varchar(50),
jan1_addr_country	varchar(5),
jan1_addr_zip	varchar(5),
jan1_addr_zip_cass	varchar(4),
jan1_addr_zip_rt	varchar(2),
jan1_confidential_flag	varchar(1),
jan1_address_suppress_flag	varchar(1),
filler5	varchar(37),
jan1_ml_deliverable	varchar(1),
hs_exempt	varchar(1),
ov65_exempt	varchar(1),
ov65_prorate_begin	varchar(25),
ov65_prorate_end	varchar(25),
ov65s_exempt	varchar(1),
dp_exempt	varchar(1),
dv1_exempt	varchar(1),
dv1s_exempt	varchar(1),
dv2_exempt	varchar(1),
dv2s_exempt	varchar(1),
dv3_exempt	varchar(1),
dv3s_exempt	varchar(1),
dv4_exempt	varchar(1),
dv4s_exempt	varchar(1),
ex_exempt	varchar(1),
ex_prorate_begin	varchar(25),
ex_prorate_end	varchar(25),
lve_exempt	varchar(1),
ab_exempt	varchar(1),
en_exempt	varchar(1),
fr_exempt	varchar(1),
ht_exempt	varchar(1),
pro_exempt	varchar(1),
pc_exempt	varchar(1),
so_exempt	varchar(1),
ex366_exempt	varchar(1),
ch_exempt	varchar(1),
imprv_state_cd	varchar(10),
land_state_cd	varchar(10),
personal_state_cd	varchar(10),
mineral_state_cd	varchar(10),
land_acres	numeric(20),
entity_agent_id	bigint,
entity_agent_name	varchar(70),
entity_agent_addr_line1	varchar(60),
entity_agent_addr_line2	varchar(60),
entity_agent_addr_line3	varchar(60),
entity_agent_city	varchar(50),
entity_agent_state	varchar(50),
entity_agent_country	varchar(5),
entity_agent_zip	varchar(5),
entity_agent_cass	varchar(4),
entity_agent_rt	varchar(2),
filler6	varchar(34),
ca_agent_id	bigint,
ca_agent_name	varchar(70),
ca_agent_addr_line1	varchar(60),
ca_agent_addr_line2	varchar(60),
ca_agent_addr_line3	varchar(60),
ca_agent_city	varchar(50),
ca_agent_state	varchar(50),
ca_agent_country	varchar(5),
ca_agent_zip	varchar(5),
ca_agent_zip_cass	varchar(4),
ca_agent_zip_rt	varchar(2),
filler7	varchar(34),
arb_agent_id	bigint,
arb_agent_name	varchar(70),
arb_agent_addr_line1	varchar(60),
arb_agent_addr_line2	varchar(60),
arb_agent_addr_line3	varchar(60),
arb_agent_city	varchar(50),
arb_agent_state	varchar(50),
arb_agent_country	varchar(5),
arb_agent_zip	varchar(5),
arb_agent_zip_cass	varchar(4),
arb_agent_zip_rt	varchar(2),
filler8	varchar(34),
mineral_type_of_int	varchar(5),
mineral_int_pct	varchar(15),
productivity_use_code	varchar(3),
filler9	varchar(40),
timber_78_market	bigint,
ag_late_loss	bigint,
late_freeport_penalty	bigint,
filler10	varchar(2),
filler11	varchar(5),
filler12	varchar(2),
dba	varchar(40),
filler13	varchar(38),
market_value	numeric(14),
filler14	varchar(20),
filler15	varchar(20),
filler16	varchar(20),
filler17	varchar(1),
filler18	varchar(1),
filler19	varchar(70),
ov65_deferral_date	varchar(25),
dp_deferral_date	varchar(25),
ref_id1	varchar(25),
ref_id2	varchar(25),
situs_num	varchar(15),
situs_unit	varchar(5),
appr_owner_id	bigint,
appr_owner_name	varchar(70),
appr_addr_line1	varchar(60),
appr_addr_line2	varchar(60),
appr_addr_line3	varchar(60),
appr_addr_city	varchar(50),
appr_addr_state	varchar(50),
appr_addr_country	varchar(5),
appr_addr_zip	varchar(5),
appr_addr_zip_cass	varchar(4),
appr_addr_zip_cass_route	varchar(2),
appr_ml_deliverable	varchar(1),
appr_confidential_flag	varchar(1),
appr_address_suppress_flag	varchar(1),
appr_confidential_name	varchar(70),
py_confidential_name	varchar(70),
jan1_confidential_name	varchar(70),
filler20	varchar(5),
rendition_filed	varchar(1),
rendition_date	varchar(25),
rendition_penalty	numeric(15),
rendition_penalty_date_paid	varchar(25),
rendition_fraud_penalty	numeric(15),
rendition_fraud_penalty_date_paid	varchar(25),
filler21	varchar(20),
entities	varchar(140),
eco_exempt	varchar(1),
dataset_id	numeric(15),
deed_num	varchar(50),
chodo_exempt	varchar(1),
local_option_pct_only_flag_hs	varchar(1),
local_option_pct_only_flag_ov65	varchar(1),
local_option_pct_only_flag_ov65s	varchar(1),
local_option_pct_only_flag_dp	varchar(1),
freeze_only_flag_ov65	varchar(1),
freeze_only_flag_ov65s	varchar(1),
freeze_only_flag_dp	varchar(1),
apply_percent_exemption_flag	varchar(1),
exemption_percentage	numeric(15),
vit_flag	varchar(1),
lih_exempt	varchar(1),
git_exempt	varchar(1),
dps_exempt	varchar(1),
dps_deferral_date	varchar(25),
local_option_pct_only_flag_dps	varchar(1),
freeze_only_flag_dps	varchar(1),
dvhs_exempt	varchar(1),
hs_qualify_yr	numeric(4),
ov65_qualify_yr	numeric(4),
ov65s_qualify_yr	numeric(4),
dp_qualify_yr	numeric(4),
dps_qualify_yr	numeric(4),
dv1_qualify_yr	numeric(4),
dv1s_qualify_yr	numeric(4),
dv2_qualify_yr	numeric(4),
dv2s_qualify_yr	numeric(4),
dv3_qualify_yr	numeric(4),
dv3s_qualify_yr	numeric(4),
dv4_qualify_yr	numeric(4),
dv4s_qualify_yr	numeric(4),
dvhs_qualify_yr	numeric(4),
ex_qualify_yr	numeric(4),
ab_qualify_yr	numeric(4),
en_qualify_yr	numeric(4),
fr_qualify_yr	numeric(4),
ht_qualify_yr	numeric(4),
pro_qualify_yr	numeric(4),
pc_qualify_yr	numeric(4),
so_qualify_yr	numeric(4),
ex366_qualify_yr	numeric(4),
ch_qualify_yr	numeric(4),
eco_qualify_yr	numeric(4),
chodo_qualify_yr	numeric(4),
lih_qualify_yr	numeric(4),
git_qualify_yr	numeric(4),
mortgage_addr_line1	varchar(60),
mortgage_addr_line2	varchar(60),
mortgage_addr_line3	varchar(60),
mortgage_addr_city	varchar(50),
mortgage_addr_state	varchar(50),
mortgage_addr_country	varchar(5),
mortgage_addr_zip	varchar(5),
mortgage_addr_zip_cass	varchar(4),
mortgage_addr_zip_rt	varchar(2),
mortgage_addr_ml_deliverable	varchar(1),
sic_code	varchar(10),
omitted_property_flag	varchar(1),
hs_prorate_begin	varchar(25),
hs_prorate_end	varchar(25),
ov65s_prorate_begin	varchar(25),
ov65s_prorate_end	varchar(25),
dp_prorate_begin	varchar(25),
dp_prorate_end	varchar(25),
dv1_prorate_begin	varchar(25),
dv1_prorate_end	varchar(25),
dv1s_prorate_begin	varchar(25),
dv1s_prorate_end	varchar(25),
dv2_prorate_begin	varchar(25),
dv2_prorate_end	varchar(25),
dv2s_prorate_begin	varchar(25),
dv2s_prorate_end	varchar(25),
dv3_prorate_begin	varchar(25),
dv3_prorate_end	varchar(25),
dv3s_prorate_begin	varchar(25),
dv3s_prorate_end	varchar(25),
dv4_prorate_begin	varchar(25),
dv4_prorate_end	varchar(25),
dv4s_prorate_begin	varchar(25),
dv4s_prorate_end	varchar(25),
lve_prorate_begin	varchar(25),
lve_prorate_end	varchar(25),
ab_prorate_begin	varchar(25),
ab_prorate_end	varchar(25),
en_prorate_begin	varchar(25),
en_prorate_end	varchar(25),
fr_prorate_begin	varchar(25),
fr_prorate_end	varchar(25),
ht_prorate_begin	varchar(25),
ht_prorate_end	varchar(25),
pro_prorate_begin	varchar(25),
pro_prorate_end	varchar(25),
pc_prorate_begin	varchar(25),
pc_prorate_end	varchar(25),
so_prorate_begin	varchar(25),
so_prorate_end	varchar(25),
ex366_prorate_begin	varchar(25),
ex366_prorate_end	varchar(25),
ch_prorate_begin	varchar(25),
ch_prorate_end	varchar(25),
dps_prorate_begin	varchar(25),
dps_prorate_end	varchar(25),
eco_prorate_begin	varchar(25),
eco_prorate_end	varchar(25),
chodo_prorate_begin	varchar(25),
chodo_prorate_end	varchar(25),
lih_prorate_begin	varchar(25),
lih_prorate_end	varchar(25),
git_prorate_begin	varchar(25),
git_prorate_end	varchar(25),
clt_exempt	varchar(1),
clt_prorate_begin	varchar(25),
clt_prorate_end	varchar(25),
clt_qualify_yr	numeric(4),
dvhss_exempt	varchar(1),
dvhss_prorate_begin	varchar(25),
dvhss_prorate_end	varchar(25),
dvhss_qualify_yr	numeric(4),
omitted_imprv_hstd_val	numeric(15),
omitted_imprv_non_hstd_val	numeric(15),
dvhs_prorate_begin	varchar(25),
dvhs_prorate_end	varchar(25),
ex_xd_exempt	varchar(1),
ex_xd_qualify_yr	numeric(4),
ex_xd_prorate_begin	varchar(25),
ex_xd_prorate_end	varchar(25),
ex_xf_exempt	varchar(1),
ex_xf_qualify_yr	numeric(4),
ex_xf_prorate_begin	varchar(25),
ex_xf_prorate_end	varchar(25),
ex_xg_exempt	varchar(1),
ex_xg_qualify_yr	numeric(4),
ex_xg_prorate_begin	varchar(25),
ex_xg_prorate_end	varchar(25),
ex_xh_exempt	varchar(1),
ex_xh_qualify_yr	numeric(4),
ex_xh_prorate_begin	varchar(25),
ex_xh_prorate_end	varchar(25),
ex_xi_exempt	varchar(1),
ex_xi_qualify_yr	numeric(4),
ex_xi_prorate_begin	varchar(25),
ex_xi_prorate_end	varchar(25),
ex_xj_exempt	varchar(1),
ex_xj_qualify_yr	numeric(4),
ex_xj_prorate_begin	varchar(25),
ex_xj_prorate_end	varchar(25),
ex_xl_exempt	varchar(1),
ex_xl_qualify_yr	numeric(4),
ex_xl_prorate_begin	varchar(25),
ex_xl_prorate_end	varchar(25),
ex_xm_exempt	varchar(1),
ex_xm_qualify_yr	numeric(4),
ex_xm_prorate_begin	varchar(25),
ex_xm_prorate_end	varchar(25),
ex_xn_exempt	varchar(1),
ex_xn_qualify_yr	numeric(4),
ex_xn_prorate_begin	varchar(25),
ex_xn_prorate_end	varchar(25),
ex_xo_exempt	varchar(1),
ex_xo_qualify_yr	numeric(4),
ex_xo_prorate_begin	varchar(25),
ex_xo_prorate_end	varchar(25),
ex_xp_exempt	varchar(1),
ex_xp_qualify_yr	numeric(4),
ex_xp_prorate_begin	varchar(25),
ex_xp_prorate_end	varchar(25),
ex_xq_exempt	varchar(1),
ex_xq_qualify_yr	numeric(4),
ex_xq_prorate_begin	varchar(25),
ex_xq_prorate_end	varchar(25),
ex_xr_exempt	varchar(1),
ex_xr_qualify_yr	numeric(4),
ex_xr_prorate_begin	varchar(25),
ex_xr_prorate_end	varchar(25),
ex_xs_exempt	varchar(1),
ex_xs_qualify_yr	numeric(4),
ex_xs_prorate_begin	varchar(25),
ex_xs_prorate_end	varchar(25),
ex_xt_exempt	varchar(1),
ex_xt_qualify_yr	numeric(4),
ex_xt_prorate_begin	varchar(25),
ex_xt_prorate_end	varchar(25),
ex_xu_exempt	varchar(1),
ex_xu_qualify_yr	numeric(4),
ex_xu_prorate_begin	varchar(25),
ex_xu_prorate_end	varchar(25),
ex_xv_exempt	varchar(1),
ex_xv_qualify_yr	numeric(4),
ex_xv_prorate_begin	varchar(25),
ex_xv_prorate_end	varchar(25),
ex_xa_exempt	varchar(1),
ex_xa_qualify_yr	numeric(4),
ex_xa_prorate_begin	varchar(25),
ex_xa_prorate_end	varchar(25),
lve_qualify_yr	numeric(4),
ppv_exempt	varchar(1),
ppv_qualify_yr	numeric(4),
ppv_prorate_begin	varchar(25),
ppv_prorate_end	varchar(25),
dvch_exempt	varchar(1),
dvch_qualify_yr	numeric(4),
dvch_prorate_begin	varchar(25),
dvch_prorate_end	varchar(25),
dvchs_exempt	varchar(1),
dvchs_qualify_yr	numeric(4),
dvchs_prorate_begin	varchar(25),
dvchs_prorate_end	varchar(25),
masss_exempt	varchar(1),
masss_qualify_yr	numeric(4),
masss_prorate_begin	varchar(25),
masss_prorate_end	varchar(25),
pp_late_interstate_allocation_val	numeric(15)
)
go

