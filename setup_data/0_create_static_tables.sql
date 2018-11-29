------- METRO LOCATIONS --------------------------------------------------------------------------------------------------------------------
CREATE TABLE pred.metro_locations
(
    metro_name text COLLATE pg_catalog."default",
    lon numeric,
    lat numeric
)

-- IN BASH (psql)
\c postgres
COPY pred.metro_locations(metro_name,lon,lat) 
FROM '/Users/Filip/Google Drive/jupiter/apartment_analysis/setup_data/metro_locations.csv' DELIMITER ';' CSV HEADER;
--------------------------------------------------------------------------------------------------------------------------------------------


------- STOCKHOLM AREAS --------------------------------------------------------------------------------------------------------------------
-- COMMENT: Need to setup postgis to generate table

create table pred.locations (
location_name text,
location_geom geometry
);


truncate pred.locations;
insert into pred.locations 
values
('Gamla Stan', ST_GeomFromText('POLYGON((18.06049 59.32614,18.06126 59.32437,18.06401 59.3236,18.06727 59.32211,18.07096 59.32181,18.07437 59.32119,18.07611 59.32228,18.07731 59.32555,18.07531 59.32719,18.07276 59.32868,18.06989 59.32885,18.06049 59.32614))') )
,
('Södermalm', ST_GeomFromText('POLYGON((18.02659 59.31918,18.05145 59.3215,18.06976 59.32163,18.09989 59.31624,18.10873 59.31607,18.10177 59.31187,18.0986 59.30753,18.07551 59.30265,18.06036 59.30499,18.04746 59.30862,18.02505 59.31643,18.02659 59.31918))') )
,
('Långholmen', ST_GeomFromText('POLYGON((18.01578 59.32233,18.02019 59.32297,18.02402 59.32237,18.02642 59.3236,18.0362 59.32312,18.04041 59.32146,18.03916 59.32078,18.03553 59.32019,18.03008 59.31966,18.02794 59.31949,18.02123 59.32016,18.01601 59.31998,18.01378 59.32092,18.01578 59.32233))') )
,
('Reimers Holme', ST_GeomFromText('POLYGON((18.01517 59.31889,18.02135 59.32008,18.02659 59.31955,18.02487 59.31637,18.01644 59.31699,18.01468 59.31844,18.01517 59.31889))') )
,
('Gärdet', ST_GeomFromText('POLYGON((18.0789 59.34394,18.08066 59.34557,18.0974 59.35017,18.10912 59.34726,18.11096 59.34665,18.11375 59.34525,18.1147 59.34442,18.11367 59.34218,18.11478 59.3396,18.1048 59.33943,18.10384 59.33908,18.10272 59.33825,18.0789 59.34394))') )
,
('Östermalm', ST_GeomFromText('POLYGON((18.06659 59.34682,18.07264 59.34527,18.10298 59.33796,18.09937 59.33306,18.09745 59.33277,18.09504 59.33148,18.08139 59.33111,18.07581 59.33303,18.07187 59.33665,18.06893 59.3381,18.06672 59.34031,18.06541 59.34095,18.06274 59.3437,18.06311 59.34511,18.06264 59.34581,18.06659 59.34682))') )
,
('Vasastan', ST_GeomFromText('POLYGON((18.0652 59.34095,18.06267 59.34371,18.06305 59.3451,18.06244 59.34579,18.06649 59.34685,18.05618 59.3514,18.05043 59.35034,18.04442 59.35003,18.04146 59.35068,18.03101 59.34701,18.02587 59.34377,18.02524 59.33983,18.02782 59.33888,18.03461 59.33736,18.0469 59.33553,18.04765 59.33621,18.04842 59.33654,18.05332 59.33783,18.05292 59.33825,18.05519 59.33884,18.05561 59.33845,18.0652 59.34095))') )
,
('Norrmalm', ST_GeomFromText('POLYGON((18.0556 59.33843,18.05517 59.33882,18.05297 59.33825,18.05338 59.33782,18.04852 59.33655,18.04771 59.33619,18.04693 59.33551,18.04982 59.33423,18.05092 59.33212,18.0509 59.33149,18.05279 59.32962,18.05676 59.32848,18.05766 59.32739,18.0623 59.32805,18.06543 59.32791,18.06998 59.3291,18.07427 59.32929,18.07745 59.32763,18.08079 59.32879,18.07973 59.33032,18.07571 59.33301,18.07176 59.3366,18.06886 59.33808,18.06666 59.34029,18.06535 59.34093,18.0556 59.33843))') )
,
('Kungsholmen', ST_GeomFromText('POLYGON((18.04646 59.33518,18.04958 59.33358,18.0497 59.33241,18.05268 59.32951,18.05603 59.3285,18.05663 59.32667,18.04047 59.32614,18.02898 59.32781,18.02308 59.32385,18.01045 59.32526,17.99462 59.33043,17.99529 59.33718,18.00736 59.34135,18.01964 59.33965,18.0294 59.33806,18.04646 59.33518))') )
,
('Liljeholmen', ST_GeomFromText('POLYGON((18.00882 59.30967,18.01238 59.30716,18.01966 59.30431,18.02179 59.30189,18.02723 59.29946,18.03483 59.30216,18.03925 59.3061,18.03121 59.30842,18.03458 59.31246,18.02267 59.31595,18.01743 59.31617,18.0154 59.31233,18.00882 59.30967))') )
,
('Gröndal', ST_GeomFromText('POLYGON((18.00861 59.30998,18.01492 59.31261,18.01727 59.31657,18.00544 59.31936,17.98282 59.31526,17.98698 59.31316,17.99389 59.31387,17.99867 59.31144,18.00861 59.30998))') )
,
('Aspudden', ST_GeomFromText('POLYGON((17.98234 59.30871,17.99021 59.30396,18.01492 59.30566,18.01189 59.30706,18.00825 59.30994,17.99846 59.31131,17.99376 59.31379,17.98609 59.31281,17.98368 59.31337,17.97814 59.31147,17.98234 59.30871))') )
,
('Midsommarkransen', ST_GeomFromText('POLYGON((18.0153 59.30563,17.99022 59.30388,17.99103 59.30085,17.99191 59.29957,17.99283 59.29791,17.99741 59.29851,18.0033 59.2991,18.00545 59.29851,18.01293 59.29994,18.0213 59.30125,18.0194 59.30416,18.0153 59.30563))') )
,
('Hägerstensåsen', ST_GeomFromText('POLYGON((17.99247 59.29786,17.98795 59.29682,17.98724 59.29225,17.98875 59.28928,17.98223 59.28884,17.97489 59.29733,17.97958 59.30188,17.9899 59.30382,17.99084 59.30076,17.99247 59.29786))') )
,
('Västberga', ST_GeomFromText('POLYGON((17.98814 59.29673,17.98754 59.29223,17.98902 59.28933,17.99668 59.2912,18.00041 59.29355,18.01075 59.28875,18.02204 59.2903,18.0271 59.29932,18.0221 59.3013,18.00555 59.29833,18.00328 59.29891,17.99408 59.29793,17.98814 59.29673))') )
,
('Hägersten', ST_GeomFromText('POLYGON((17.95561 59.30339,17.94909 59.30444,17.9593 59.30959,17.97788 59.31145,17.98999 59.30396,17.97958 59.30201,17.97471 59.29734,17.96592 59.29624,17.96374 59.29496,17.95905 59.2971,17.95769 59.29819,17.95666 59.2983,17.95725 59.30093,17.95639 59.30148,17.95561 59.30339))') )
,
('Mälarhöjden', ST_GeomFromText('POLYGON((17.96374 59.29492,17.9584 59.29087,17.94878 59.28805,17.94678 59.28981,17.94604 59.29351,17.94562 59.2944,17.94346 59.29539,17.94312 59.29626,17.94203 59.2965,17.94248 59.29772,17.94154 59.29953,17.93969 59.30043,17.93791 59.30064,17.93801 59.30421,17.94902 59.30442,17.95557 59.30336,17.95634 59.30146,17.95716 59.30091,17.95657 59.29829,17.95764 59.29815,17.95899 59.29707,17.96374 59.29492))') )
,
('Västertorp', ST_GeomFromText('POLYGON((17.96595 59.29613,17.96394 59.29493,17.95848 59.29083,17.95691 59.29041,17.94991 59.28835,17.96029 59.28921,17.98209 59.28879,17.97481 59.29721,17.96595 59.29613))') )
,
('Solberga', ST_GeomFromText('POLYGON((18.0005 59.29342,18.01067 59.28868,18.02041 59.28993,18.01811 59.28286,18.01587 59.28073,18.00773 59.27725,18.00344 59.2796,18.00188 59.27993,17.9846 59.28885,17.9889 59.28916,17.99697 59.29113,18.0005 59.29342))') )
,
('Fruängen', ST_GeomFromText('POLYGON((17.98114 59.28866,17.98118 59.28779,17.97282 59.28338,17.9724 59.28245,17.96973 59.28276,17.96836 59.28232,17.96655 59.28156,17.96447 59.28178,17.96232 59.28213,17.96016 59.28088,17.95888 59.28006,17.95728 59.28006,17.95745 59.28106,17.95654 59.28216,17.95684 59.28269,17.95358 59.28358,17.94933 59.28529,17.94761 59.28749,17.94978 59.28829,17.96025 59.28916,17.98114 59.28866))') )
,
('Årsta', ST_GeomFromText('POLYGON((18.03921 59.30538,18.03535 59.30201,18.02763 59.29938,18.03174 59.29727,18.03586 59.29613,18.04204 59.29385,18.04607 59.28973,18.0562 59.29131,18.05955 59.29333,18.06307 59.29368,18.06547 59.29421,18.06744 59.29526,18.07208 59.29736,18.07517 59.29868,18.07886 59.29911,18.08118 59.29933,18.07939 59.30312,18.07492 59.30228,18.04093 59.30571,18.03921 59.30538))') )
,
('Östberga', ST_GeomFromText('POLYGON((18.02732 59.29922,18.02231 59.29019,18.02072 59.28993,18.0205 59.28895,18.02582 59.2898,18.03238 59.28564,18.03324 59.28515,18.03492 59.28529,18.03569 59.28533,18.03745 59.28397,18.03818 59.28418,18.04028 59.28274,18.04183 59.28208,18.04476 59.28372,18.04605 59.28459,18.04601 59.2853,18.04548 59.286,18.04592 59.28698,18.04599 59.2897,18.04192 59.29379,18.0316 59.29717,18.02732 59.29922))') )
,
('Gamla Enskede', ST_GeomFromText('POLYGON((18.0992 59.28982,18.09594 59.28967,18.08772 59.28853,18.0851 59.28801,18.07479 59.28514,18.06916 59.28055,18.06961 59.27837,18.07251 59.27853,18.0753 59.27957,18.07766 59.27717,18.08122 59.2768,18.08356 59.27687,18.08554 59.27649,18.09122 59.27549,18.09292 59.27552,18.09697 59.26717,18.10524 59.26838,18.10968 59.27318,18.10483 59.27547,18.10098 59.27526,18.09756 59.27949,18.09551 59.28323,18.09851 59.28453,18.10126 59.28624,18.10148 59.28702,18.10038 59.28954,18.0992 59.28982))') )
,
('Hammarbyhöjden', ST_GeomFromText('POLYGON((18.08603 59.29828,18.08674 59.29825,18.08608 59.29673,18.0883 59.29605,18.09013 59.29514,18.09178 59.29416,18.09186 59.29294,18.09148 59.29166,18.09212 59.29105,18.09616 59.2898,18.09922 59.28999,18.10062 59.28969,18.10066 59.29025,18.10229 59.29026,18.10538 59.29019,18.10813 59.29076,18.10804 59.29246,18.10725 59.29299,18.1074 59.29544,18.10749 59.29683,18.10757 59.29893,18.09854 59.30055,18.09154 59.30065,18.089 59.30044,18.08513 59.29935,18.08603 59.29828))') )
,
('Enskede Gård', ST_GeomFromText('POLYGON((18.07221 59.28333,18.06837 59.2846,18.05904 59.29006,18.06017 59.29132,18.06049 59.29209,18.05906 59.29284,18.05964 59.29322,18.06328 59.29355,18.06581 59.29414,18.07013 59.29632,18.07358 59.29346,18.07225 59.29278,18.07639 59.28907,18.07735 59.28848,18.08087 59.28707,18.0744 59.28527,18.07221 59.28333))') )
,
('Hammarbyhamnen', ST_GeomFromText('POLYGON((18.07985 59.30317,18.08075 59.30126,18.08543 59.29968,18.08895 59.30055,18.09144 59.30076,18.09858 59.3008,18.1077 59.29909,18.10761 59.30163,18.11172 59.30207,18.11173 59.30264,18.11448 59.30422,18.11326 59.30523,18.11289 59.30792,18.1085 59.30832,18.10558 59.30912,18.10555 59.30987,18.10645 59.31059,18.10502 59.31133,18.10294 59.31158,18.09865 59.30748,18.07985 59.30317))') )
,
('Globen', ST_GeomFromText('POLYGON((18.08066 59.30104,18.08161 59.29914,18.07545 59.29856,18.07045 59.29638,18.07401 59.29342,18.07268 59.29276,18.07672 59.28912,18.07745 59.28864,18.08105 59.28708,18.08491 59.28811,18.08822 59.28879,18.09577 59.28976,18.09191 59.29097,18.09116 59.29183,18.09156 59.29284,18.09156 59.29413,18.08826 59.29592,18.08579 59.29666,18.0865 59.29813,18.08573 59.29816,18.08479 59.2994,18.08522 59.29953,18.08066 59.30104))') )
,
('Enskedefältet', ST_GeomFromText('POLYGON((18.04625 59.28539,18.0538 59.28419,18.0538 59.28325,18.06866 59.28066,18.07203 59.28318,18.06823 59.2845,18.05871 59.29007,18.05989 59.29137,18.06023 59.29209,18.05893 59.29283,18.05632 59.29122,18.0463 59.28967,18.04603 59.28675,18.04569 59.28599,18.04625 59.28539))') )
,
('Svedmyra', ST_GeomFromText('POLYGON((18.06968 59.27825,18.07258 59.27835,18.07521 59.27941,18.0774 59.27704,18.08029 59.27676,18.07835 59.27542,18.07998 59.2745,18.07912 59.27386,18.07291 59.27237,18.0744 59.26959,18.07298 59.26821,18.06926 59.26779,18.06358 59.27143,18.06367 59.27334,18.06256 59.2735,18.06349 59.27441,18.06494 59.27617,18.06619 59.27672,18.06733 59.27692,18.06968 59.27825))') )
,
('Strueby', ST_GeomFromText('POLYGON((18.03728 59.28037,18.04127 59.27561,18.04719 59.27307,18.05144 59.27139,18.06019 59.26663,18.06302 59.26461,18.06869 59.26386,18.06916 59.26772,18.06331 59.27146,18.06345 59.27324,18.0622 59.2735,18.0647 59.27614,18.06603 59.27695,18.06712 59.27706,18.06933 59.27829,18.06882 59.28054,18.05344 59.28318,18.05346 59.28407,18.04644 59.28526,18.04628 59.28453,18.04191 59.28197,18.03728 59.28037))') )
,
('Enskededalen', ST_GeomFromText('POLYGON((18.10156 59.28623,18.1065 59.28572,18.10989 59.28399,18.1107 59.2839,18.11302 59.2823,18.1112 59.28122,18.11259 59.28059,18.11367 59.28121,18.11637 59.27991,18.11347 59.27961,18.11577 59.27899,18.11199 59.277,18.1106 59.27652,18.10972 59.27336,18.1051 59.27556,18.1012 59.27542,18.09783 59.27955,18.09586 59.2831,18.09875 59.28447,18.10156 59.28623))') )
,
('Björkhagen', ST_GeomFromText('POLYGON((18.10783 59.30152,18.11199 59.30187,18.11448 59.30141,18.11543 59.29953,18.12624 59.29843,18.12085 59.29372,18.12456 59.28724,18.12283 59.28715,18.12178 59.28699,18.11978 59.28708,18.11259 59.28879,18.10828 59.29075,18.10818 59.29248,18.10745 59.29312,18.10783 59.30152))') )
,
('Kärrtorp', ST_GeomFromText('POLYGON((18.11369 59.28127,18.11665 59.27984,18.12233 59.28137,18.12418 59.28174,18.12534 59.28216,18.12665 59.2829,18.1307 59.28395,18.12844 59.2853,18.12572 59.28554,18.12455 59.2872,18.12286 59.28711,18.12178 59.28693,18.11964 59.287,18.11243 59.28876,18.10822 59.29071,18.10543 59.29012,18.10084 59.29018,18.10075 59.28967,18.10055 59.28957,18.10163 59.28701,18.10148 59.28633,18.1066 59.28581,18.10995 59.28407,18.11081 59.284,18.11319 59.28231,18.11138 59.28122,18.11264 59.28063,18.11369 59.28127))') )
,
('Bagarmossen', ST_GeomFromText('POLYGON((18.11903 59.28042,18.1207 59.27933,18.12032 59.27871,18.12034 59.27786,18.12261 59.27648,18.12388 59.27575,18.12431 59.27518,18.12412 59.27469,18.12345 59.27391,18.12387 59.27159,18.12673 59.27143,18.12924 59.27075,18.13342 59.27005,18.13575 59.26903,18.14042 59.26899,18.14813 59.27147,18.15038 59.27524,18.14803 59.27709,18.13765 59.28162,18.13076 59.28391,18.12673 59.28282,18.12563 59.2821,18.12422 59.28163,18.11903 59.28042))') )
,
('Tallkrogen', ST_GeomFromText('POLYGON((18.0968 59.26713,18.09079 59.26603,18.08938 59.26663,18.08767 59.26628,18.08548 59.26604,18.08498 59.26523,18.08169 59.26441,18.08034 59.26452,18.07793 59.26628,18.07324 59.26827,18.07463 59.26952,18.07316 59.27232,18.07933 59.27376,18.08019 59.27443,18.0789 59.27544,18.08053 59.27678,18.08358 59.27676,18.09126 59.27535,18.09272 59.27538,18.0968 59.26713))') )
,
('Gubbängen', ST_GeomFromText('POLYGON((18.10513 59.26818,18.10942 59.26331,18.10929 59.26248,18.10474 59.26182,18.10388 59.26119,18.0942 59.26062,18.0866 59.25926,18.08215 59.25934,18.07688 59.25852,18.0686 59.26084,18.0689 59.26385,18.06941 59.26765,18.07302 59.26807,18.07766 59.26624,18.08011 59.26443,18.08146 59.26433,18.08518 59.2651,18.08571 59.26594,18.08799 59.26616,18.08922 59.26649,18.09078 59.26596,18.10513 59.26818))') )
,
('Hökarängen', ST_GeomFromText('POLYGON((18.08208 59.25926,18.07699 59.25843,18.06852 59.26061,18.06235 59.25587,18.06006 59.25147,18.06294 59.24971,18.0647 59.24894,18.07052 59.24862,18.07669 59.24929,18.08272 59.25101,18.0862 59.25079,18.08847 59.25004,18.09148 59.25055,18.09517 59.25267,18.09937 59.25366,18.10036 59.25739,18.09921 59.2608,18.09424 59.26051,18.08662 59.25912,18.08208 59.25926))') )
,
('Traneberg', ST_GeomFromText('POLYGON((17.98488 59.33183,17.99299 59.32931,17.99504 59.33819,17.99149 59.34269,17.98301 59.3438,17.97709 59.34352,17.97847 59.3404,17.97786 59.34026,17.97523 59.34023,17.97508 59.33943,17.97595 59.33776,17.9748 59.33693,17.97367 59.33564,17.97451 59.33461,17.97668 59.33589,17.9787 59.3353,17.97847 59.33463,17.98094 59.33367,17.9822 59.3329,17.98577 59.33271,17.98488 59.33183))') )
,
('Alvik', ST_GeomFromText('POLYGON((17.97428 59.33647,17.97016 59.33538,17.96874 59.33415,17.97143 59.33292,17.97294 59.33131,17.97526 59.33061,17.97682 59.331,17.9784 59.33093,17.97902 59.33089,17.97861 59.32957,17.97923 59.32951,17.97958 59.32809,17.98093 59.32706,17.98587 59.32627,17.99269 59.32925,17.98479 59.3318,17.98554 59.33265,17.9821 59.33287,17.98089 59.33359,17.9784 59.33464,17.97855 59.33531,17.97671 59.33584,17.97444 59.33459,17.97352 59.33566,17.97428 59.33647))') )
,
('Äppelviken', ST_GeomFromText('POLYGON((17.97192 59.33212,17.97009 59.33206,17.96964 59.33179,17.97071 59.33067,17.96861 59.32903,17.96525 59.32881,17.96271 59.32881,17.96138 59.32825,17.96166 59.32534,17.96362 59.32496,17.96878 59.325,17.97007 59.32439,17.97415 59.32419,17.97445 59.32299,17.97417 59.32255,17.97997 59.3217,17.98569 59.32612,17.98082 59.32691,17.97945 59.32802,17.97908 59.32943,17.97844 59.32954,17.9788 59.33084,17.97678 59.33091,17.97514 59.33052,17.97272 59.33118,17.97192 59.33212))') )
,
('Stora Mossen', ST_GeomFromText('POLYGON((17.96844 59.33417,17.96659 59.33474,17.95608 59.33599,17.95415 59.33543,17.95449 59.33459,17.95552 59.33093,17.95462 59.32977,17.95544 59.32866,17.96084 59.32822,17.9626 59.32905,17.96533 59.32905,17.9684 59.32921,17.97033 59.33063,17.9693 59.33187,17.96986 59.33226,17.9717 59.33227,17.97107 59.33285,17.96844 59.33417))') )
,
('Ulvsunda', ST_GeomFromText('POLYGON((17.95492 59.33632,17.96668 59.33492,17.96865 59.33428,17.96989 59.33551,17.97427 59.3366,17.97565 59.33776,17.97487 59.33953,17.97492 59.34039,17.97814 59.34046,17.97677 59.34343,17.97188 59.34223,17.97014 59.34111,17.96561 59.34142,17.95999 59.34129,17.95488 59.34065,17.95304 59.33719,17.95492 59.33632))') )
,
('Lilla Essingen', ST_GeomFromText('POLYGON((18.00136 59.32741,18.0102 59.32518,18.01148 59.32456,18.00659 59.32154,17.99969 59.32219,17.9975 59.32556,18.00136 59.32741))') )
,
('Stora Essingen', ST_GeomFromText('POLYGON((17.98084 59.32172,17.98513 59.32404,17.98753 59.32666,17.99106 59.32728,17.99749 59.32395,17.99973 59.31997,17.99253 59.31747,17.98201 59.31591,17.97855 59.31959,17.98084 59.32172))') )
,
('Mariehäll', ST_GeomFromText('POLYGON((17.94454 59.36697,17.95029 59.36596,17.95578 59.36351,17.96043 59.36094,17.96119 59.35975,17.9635 59.35778,17.96162 59.35708,17.95533 59.35661,17.94493 59.35891,17.9423 59.36329,17.94454 59.36697))') )
,
('Johannesfred', ST_GeomFromText('POLYGON((17.95561 59.35647,17.96181 59.35693,17.96372 59.35726,17.9684 59.35218,17.979 59.34768,17.97934 59.34481,17.97025 59.34184,17.96658 59.34158,17.95999 59.34166,17.95585 59.35177,17.95882 59.3541,17.95561 59.35647))') )
,
('Riksby', ST_GeomFromText('POLYGON((17.9257 59.3473,17.93076 59.34308,17.92922 59.34203,17.92699 59.34128,17.93128 59.34074,17.93587 59.33947,17.93737 59.33838,17.9408 59.33811,17.94758 59.33794,17.95029 59.33715,17.9529 59.33704,17.95457 59.3408,17.95943 59.34162,17.95609 59.34893,17.9402 59.35369,17.9257 59.3473))') )
,
('Abrahamsberg', ST_GeomFromText('POLYGON((17.94866 59.33746,17.94754 59.33549,17.9481 59.33389,17.94472 59.33308,17.94214 59.33254,17.94436 59.33153,17.94625 59.33021,17.94642 59.32905,17.951 59.32914,17.95488 59.32875,17.95445 59.32986,17.95522 59.33093,17.95395 59.33561,17.95582 59.3361,17.9546 59.33625,17.95306 59.33692,17.95013 59.33702,17.94866 59.33746))') )
,
('Åkeshov', ST_GeomFromText('POLYGON((17.92677 59.34118,17.92249 59.34011,17.92068 59.33892,17.92666 59.33782,17.92969 59.33665,17.93154 59.33613,17.93681 59.33855,17.93571 59.33937,17.93109 59.34067,17.92677 59.34118))') )
,
('Åkeslund', ST_GeomFromText('POLYGON((17.93698 59.33849,17.93025 59.33553,17.93518 59.33275,17.94039 59.33228,17.942 59.33264,17.94788 59.33393,17.94724 59.33558,17.94848 59.33752,17.94761 59.33782,17.94075 59.33802,17.93698 59.33849))') )
,
('Nockeby', ST_GeomFromText('POLYGON((17.91261 59.32848,17.91156 59.3269,17.92887 59.32143,17.93117 59.32351,17.93359 59.32572,17.93465 59.32562,17.93394 59.32668,17.93475 59.32709,17.93715 59.32697,17.93797 59.32765,17.93369 59.33268,17.92555 59.33282,17.92141 59.33069,17.91968 59.33076,17.91261 59.32848))') )
,
('Nockebyhov', ST_GeomFromText('POLYGON((17.89913 59.33608,17.9157 59.33875,17.92007 59.33884,17.92649 59.33766,17.93106 59.33608,17.92977 59.33533,17.93449 59.33284,17.9257 59.33301,17.92145 59.33091,17.91978 59.33096,17.91012 59.32798,17.90502 59.32893,17.89745 59.33478,17.89913 59.33608))') )
,
('Ålsten', ST_GeomFromText('POLYGON((17.93827 59.32774,17.94625 59.32888,17.95121 59.32898,17.96114 59.32807,17.9614 59.3252,17.9596 59.32349,17.95651 59.31681,17.95123 59.31528,17.94144 59.3189,17.94354 59.32078,17.94194 59.32271,17.94199 59.32496,17.93827 59.32774))') )
,
('Olovslund', ST_GeomFromText('POLYGON((17.93372 59.33277,17.9349 59.33275,17.94045 59.33222,17.94194 59.33254,17.94426 59.33149,17.94615 59.33019,17.94633 59.329,17.93811 59.32778,17.93372 59.33277))') )
,
('Hagalund', ST_GeomFromText('POLYGON((18.0253 59.34194,18.02007 59.34457,18.01211 59.35299,18.01243 59.35566,17.99943 59.36192,18.00427 59.3622,18.00977 59.36487,18.00548 59.37305,18.01907 59.37684,18.04075 59.36802,18.04839 59.35695,18.05569 59.35175,18.04487 59.3503,18.04118 59.35098,18.03041 59.34743,18.02554 59.34372,18.0253 59.34194))') )
,
('Huvudsta', ST_GeomFromText('POLYGON((17.97295 59.35918,17.9744 59.36006,17.98385 59.35564,17.99864 59.3549,18.01163 59.35307,18.01964 59.34444,18.025 59.34179,18.0247 59.33897,18.00718 59.3418,17.98646 59.34467,17.97943 59.34779,17.96883 59.35271,17.96704 59.35592,17.97591 59.35633,17.97295 59.35918))') )
,
('Skytteholm', ST_GeomFromText('POLYGON((17.98307 59.35647,17.98822 59.3594,17.99912 59.36176,18.012 59.35568,18.01176 59.35339,17.99896 59.35506,17.98372 59.35585,17.98307 59.35647))') )
,
('Duvbo', ST_GeomFromText('POLYGON((17.95574 59.37967,17.95653 59.37559,17.96475 59.37322,17.96739 59.37079,17.98174 59.37141,17.98286 59.37503,17.98477 59.37707,17.98496 59.37931,17.97559 59.38152,17.9639 59.37942,17.95574 59.37967))') )
,
('Järva', ST_GeomFromText('POLYGON((18.00535 59.3732,18.01543 59.37595,18.00103 59.3882,17.98499 59.39487,17.97629 59.39242,17.96806 59.38918,17.97915 59.38502,17.97963 59.38077,17.98524 59.37939,17.99289 59.37914,17.99903 59.37717,18.00253 59.37681,18.00535 59.3732))') )
,
('Ursta', ST_GeomFromText('POLYGON((17.97934 59.38079,17.97896 59.38493,17.96789 59.38913,17.97629 59.39253,17.96831 59.39726,17.96308 59.39409,17.9525 59.39704,17.9478 59.3913,17.94471 59.38907,17.93974 59.38789,17.93577 59.38238,17.95531 59.37974,17.96376 59.37954,17.97554 59.38163,17.97934 59.38079))') )
,
('Duvbo', ST_GeomFromText('POLYGON((17.9375 59.36951,17.94102 59.37292,17.9563 59.37545,17.96449 59.37318,17.96241 59.37139,17.95802 59.36542,17.95583 59.36366,17.95044 59.36606,17.94337 59.36734,17.9375 59.36951))') )
,
('Sundbyberg', ST_GeomFromText('POLYGON((17.96462 59.37307,17.96243 59.3711,17.95823 59.36535,17.95606 59.36362,17.96061 59.3611,17.96646 59.3561,17.97513 59.35656,17.9725 59.3593,17.97428 59.36029,17.98247 59.35654,17.9867 59.35887,17.97785 59.36393,17.9681 59.36765,17.96713 59.37075,17.96462 59.37307))') )
,
('Råsunda', ST_GeomFromText('POLYGON((17.98522 59.37917,17.98513 59.3769,17.98334 59.37507,17.98227 59.37127,17.96775 59.37064,17.96865 59.3678,17.97827 59.36413,17.98694 59.35914,17.9884 59.35971,17.99938 59.36216,18.00406 59.36245,18.00942 59.36491,18.00506 59.37311,18.00241 59.37665,17.99871 59.37712,17.99265 59.37889,17.98522 59.37917))') )
,
('Södra Ängby', ST_GeomFromText('POLYGON((17.89381 59.34698,17.90703 59.34258,17.91535 59.33895,17.89853 59.3363,17.88607 59.33831,17.88686 59.34082,17.89381 59.34698))') )
,
('Blackeberg', ST_GeomFromText('POLYGON((17.8936 59.34702,17.88201 59.33667,17.85671 59.3467,17.86132 59.34892,17.87381 59.35225,17.88145 59.35168,17.88497 59.35177,17.8936 59.34702))') )
,
('Ängby', ST_GeomFromText('POLYGON((17.88566 59.35196,17.88831 59.35415,17.88748 59.35544,17.88866 59.35621,17.9048 59.35367,17.92531 59.3472,17.93007 59.34306,17.92876 59.34222,17.9221 59.34031,17.92023 59.33909,17.91612 59.33896,17.90711 59.34275,17.89411 59.3471,17.88566 59.35196))') )
,
('Bromma Kyrka', ST_GeomFromText('POLYGON((17.90501 59.35374,17.9254 59.34733,17.94011 59.35376,17.93699 59.35869,17.92422 59.36158,17.92118 59.35919,17.91151 59.3571,17.90501 59.35374))') )
,
('Eneby', ST_GeomFromText('POLYGON((17.91046 59.35673,17.90894 59.35766,17.90345 59.35796,17.90154 59.35995,17.90259 59.36152,17.90548 59.36218,17.91012 59.36155,17.91312 59.36181,17.92398 59.36163,17.92115 59.35929,17.91126 59.3572,17.91046 59.35673))') )
,
('Beckomberga', ST_GeomFromText('POLYGON((17.89364 59.35991,17.89742 59.35993,17.90192 59.36082,17.90128 59.35995,17.9034 59.35794,17.90885 59.35754,17.91043 59.35665,17.90482 59.35377,17.88872 59.35631,17.89264 59.35887,17.89364 59.35991))') )
,
('Råcksta', ST_GeomFromText('POLYGON((17.88531 59.35183,17.87197 59.3589,17.87419 59.36075,17.87613 59.36187,17.87579 59.36246,17.87716 59.36266,17.87771 59.36303,17.88067 59.36587,17.88167 59.36629,17.88347 59.36629,17.88566 59.36596,17.88808 59.3662,17.89857 59.36389,17.90445 59.36207,17.90233 59.36156,17.90195 59.36095,17.89777 59.3601,17.8935 59.35996,17.89252 59.35897,17.88726 59.35546,17.88807 59.35418,17.88531 59.35183))') )
,
('Vällingby', ST_GeomFromText('POLYGON((17.86506 59.3751,17.86969 59.37397,17.88029 59.36983,17.88804 59.36632,17.88575 59.36607,17.88345 59.36642,17.88164 59.36638,17.88051 59.36592,17.87707 59.36277,17.87559 59.36255,17.87587 59.36183,17.87403 59.36082,17.8719 59.35901,17.86139 59.36466,17.85948 59.36638,17.862 59.37137,17.86506 59.3751))') )
,
('Grimsta', ST_GeomFromText('POLYGON((17.85999 59.36531,17.8848 59.3519,17.88139 59.35183,17.87379 59.35242,17.85005 59.34777,17.8464 59.35484,17.85368 59.36432,17.85999 59.36531))') )
,
('Bällsta', ST_GeomFromText('POLYGON((17.92552 59.36946,17.9196 59.36295,17.94136 59.35781,17.94454 59.35929,17.94197 59.36339,17.94411 59.3669,17.92552 59.36946))') )
,
('Älvsjö', ST_GeomFromText('POLYGON((17.99134 59.27273,17.99614 59.26623,18.00539 59.26736,18.01698 59.27147,18.01389 59.27446,18.02168 59.27836,18.01592 59.28069,18.0077 59.27722,18.00336 59.27951,18.00108 59.27736,18.00056 59.27647,17.999 59.27595,17.99562 59.27453,17.99549 59.27384,17.99371 59.2731,17.99278 59.27307,17.99134 59.27273))') )
,
('Liseberg', ST_GeomFromText('POLYGON((18.02017 59.28881,18.02575 59.28971,18.03313 59.28513,18.01957 59.28136,18.01825 59.28285,18.02017 59.28881))') )
,
('Örby', ST_GeomFromText('POLYGON((18.03715 59.28046,18.0305 59.27791,18.02196 59.27823,18.01439 59.27451,18.01781 59.27101,18.01835 59.26766,18.0257 59.26299,18.02865 59.26384,18.02655 59.2652,18.03803 59.27011,18.03896 59.26959,18.0444 59.27081,18.04474 59.27391,18.04112 59.27563,18.03715 59.28046))') )
,
('Bandhagen', ST_GeomFromText('POLYGON((18.045 59.27388,18.04461 59.27064,18.03882 59.26947,18.03771 59.26869,18.04097 59.26739,18.04346 59.26483,18.04869 59.26676,18.05255 59.26334,18.06259 59.2645,18.05995 59.26655,18.05135 59.2713,18.045 59.27388))') )
,
('Högdalen', ST_GeomFromText('POLYGON((18.03869 59.26954,18.03753 59.26862,18.04088 59.26733,18.04337 59.26472,18.04861 59.26667,18.05237 59.26329,18.0627 59.26443,18.06868 59.26376,18.06835 59.26075,18.06215 59.25587,18.0617 59.25546,18.04515 59.25516,18.02889 59.26379,18.02682 59.26519,18.03813 59.26996,18.03869 59.26954))') )
,
('Örby Slott', ST_GeomFromText('POLYGON((18.01814 59.2827,18.01625 59.28075,18.02186 59.27835,18.03048 59.27801,18.03715 59.28053,18.0417 59.28202,18.04013 59.28267,18.03819 59.28413,18.03747 59.28385,18.03562 59.2852,18.03323 59.28507,18.01959 59.2813,18.01814 59.2827))') )
,
('Hjorthagen', ST_GeomFromText('POLYGON((18.08633 59.35868,18.09504 59.36087,18.1001 59.36144,18.10646 59.35334,18.10594 59.35124,18.09881 59.35093,18.093 59.34912,18.07805 59.35409,18.08633 59.35868))') )
,
('Norra Djurgården', ST_GeomFromText('POLYGON((18.07817 59.34422,18.06717 59.34709,18.05686 59.35157,18.04878 59.35709,18.03942 59.37223,18.06598 59.37648,18.10181 59.36253,18.09443 59.36123,18.08635 59.3594,18.07704 59.35404,18.09241 59.34908,18.08023 59.34583,18.07817 59.34422))') )
,
('Bergshamra', ST_GeomFromText('POLYGON((18.01904 59.37698,18.02329 59.3861,18.03517 59.38555,18.06303 59.37615,18.03337 59.37136,18.01904 59.37698))') )
,
('Ulriksdal', ST_GeomFromText('POLYGON((17.98522 59.39512,17.98719 59.39635,17.9877 59.39834,17.99243 59.39809,17.99724 59.39919,18.0126 59.39805,18.035 59.38577,18.02295 59.38629,18.01869 59.37698,18.0157 59.37616,18.00141 59.38844,17.98522 59.39512))') )
--------------------------------------------------------------------------------------------------------------------------------------------