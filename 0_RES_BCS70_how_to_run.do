*This file replicates the whole analysis

**** set scheme for graphs if needed****
*net install cleanplots, from(https://tdmize.github.io/data/cleanplots)
*set scheme cleanplots, perm


mkdir "C:\Users\Kinga\Nem-kognitiv Dropbox\Kinga Varga\ReplicationPackage_RES_BCS70\1_rawdata"

"C:\Users\Kinga\Nem-kognitiv Dropbox\Kinga Varga\ReplicationPackage_RES_BCS70\6_test"

************************
*1. Choose author
************************
clear
clear matrix
clear all
set maxvar 120000
*Anna
*global author  "C:\Users\Adamecz.Anna\Dropbox"
*global overleaf "$author\Apps\Overleaf\RES_BCS70"

*Kinga
*KTI
*global author "C:\Users\varga.kinga\Nem-kognitiv Dropbox\Kinga Varga"
*home
global author "C:\Users\Kinga\Nem-kognitiv Dropbox\Kinga Varga"
global overleaf "$author\ReplicationPackage_RES_BCS70\6_overleaf"
global rawdata "$author\ReplicationPackage_RES_BCS70\1_rawdata"
global data "$author\ReplicationPackage_RES_BCS70\2_data"
global mappa "$author\ReplicationPackage_RES_BCS70"
global overleaf "$author\res_bcs70\overleaf_Kinga"

*************************************
*2. Choose where the raw data are
*************************************
global output "$data"
*global rawdata "$data"
global data "$data"

******************
*3. Run macros
******************
*do "$mappa\replication_package_resbcs70\do\macros_rp.do"

*Macros - same for everybody

*********global temp "$output"
*global dos_rp "$mappa\replication_package_resbcs70\2_do"
*global tables_rp "$mappa\replication_package_resbcs70\3_figures&tables"
*global graphs_rp "$mappa\replication_package_resbcs70\3_figures&tables"
global tables "$mappa\3_figures_tables"
global graphs "$mappa\3_figures_tables"

global results "$mappa\4_results"
*********************
*Construct individual background characteristics variables from BCS70
*********************
/*
do "$dos\BCS70_parts.do"
do "$dos\BCS70_outcomes_age26.do"
do "$dos\BCS70_outcomes_age30.do"
do "$dos\BCS70_outcomes_age34.do"
do "$dos\BCS70_outcomes_age38.do"
do "$dos\BCS70_outcomes_age42.do"
do "$dos\BCS70_outcomes_age46.do"

do "$dos\BCS70_variables.do"
do "$dos\BCS70_LOC.do"

*********************
*BCS 70 data
*********************
do "$dos\BCS70_database.do"

*********************
*BCS 70 descriptive statistics
*********************
do "$dos\BCS70_descriptive_tables.do"


*********************
*BCS 70 graphs
*********************
do "$dos\BCS70_monthly_graphs.do"

*********************
*LFS graphs
*********************
*Figure_2_ONS_unemp_change_q2_2009_2007_by_industry.do

*********************
*Models
*********************
do "$dos\BCS70_models.do"

