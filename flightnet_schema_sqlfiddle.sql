CREATE TABLE airlines (
	iata_code varchar(255),
	airline varchar(255)
);

CREATE TABLE airports (
	iata_code varchar(255) NOT NULL,
	airport varchar(255) NULL,
	city varchar(255) NULL,
	state varchar(255) NULL,
	country varchar(255) NULL,
	latitude varchar(255) NULL,
	longitude varchar(255) NULL,
	CONSTRAINT pk_airport PRIMARY KEY (iata_code)
);

CREATE TABLE flights (
	YEAR varchar(255) NULL,
	MONTH varchar(255) NULL,
	DAY varchar(255) NULL,
	day_of_week varchar(255) NULL,
	airline varchar(255) NULL,
	flight_number varchar(255) NULL,
	tail_number varchar(255) NULL,
	origin_airport varchar(255) NULL,
	destination_airport varchar(255) NULL,
	scheduled_departure varchar(255) NULL,
	departure_time varchar(255) NULL,
	departure_delay varchar(255) NULL,
	taxi_out varchar(255) NULL,
	wheels_off varchar(255) NULL,
	scheduled_time varchar(255) NULL,
	elapsed_time varchar(255) NULL,
	air_time varchar(255) NULL,
	distance varchar(255) NULL,
	wheels_on varchar(255) NULL,
	taxi_in varchar(255) NULL,
	scheduled_arrival varchar(255) NULL,
	arrival_time varchar(255) NULL,
	arrival_delay varchar(255) NULL,
	diverted varchar(255) NULL,
	cancelled varchar(255) NULL,
	cancellation_reason varchar(255) NULL,
	air_system_delay varchar(255) NULL,
	security_delay varchar(255) NULL,
	airline_delay varchar(255) NULL,
	late_aircraft_delay varchar(255) NULL,
	weather_delay varchar(255) NULL,
    CONSTRAINT fk_flights_dest_airport FOREIGN KEY (destination_airport) REFERENCES airports(iata_code),
    CONSTRAINT fk_flights_origin_airport FOREIGN KEY (origin_airport) REFERENCES airports(iata_code)
);

INSERT INTO airports (iata_code,airport,city,state,country,latitude,longitude) VALUES
	 ('DEN','Denver International Airport','Denver','CO','USA','39.85841','-104.66700'),
	 ('DTW','Detroit Metropolitan Airport','Detroit','MI','USA','42.21206','-83.34884'),
	 ('JFK','John F. Kennedy International Airport (New York International Airport)','New York','NY','USA','40.63975','-73.77893'),
	 ('LAS','McCarran International Airport','Las Vegas','NV','USA','36.08036','-115.15233'),
	 ('LAX','Los Angeles International Airport','Los Angeles','CA','USA','33.94254','-118.40807'),
	 ('ORD','Chicago O''Hare International Airport','Chicago','IL','USA','41.97960','-87.90446'),
	 ('PHX','Phoenix Sky Harbor International Airport','Phoenix','AZ','USA','33.43417','-112.00806'),
	 ('SFO','San Francisco International Airport','San Francisco','CA','USA','37.61900','-122.37484');

INSERT INTO flights (YEAR,MONTH,DAY,day_of_week,airline,flight_number,tail_number,origin_airport,destination_airport,scheduled_departure,departure_time,departure_delay,taxi_out,wheels_off,scheduled_time,elapsed_time,air_time,distance,wheels_on,taxi_in,scheduled_arrival,arrival_time,arrival_delay,diverted,cancelled,cancellation_reason,air_system_delay,security_delay,airline_delay,late_aircraft_delay,weather_delay) VALUES
	 ('2015','3','1','7','DL','2045','N3743H','JFK','DEN','1815','1021','966','26','1047','284','312','277','1626','1324','9','2059','1333','994','0','0','','28','0','0','0','966'),
	 ('2015','1','30','5','WN','1070','N944WN','LAS','PHX','1320','1431','71','36','1507','70','98','52','255','1659','10','1530','1709','99','0','0','','98','0','0','1','0'),
	 ('2015','11','19','4','UA','834','N67812','LAS','SFO','0750','0923','93','47','1010','119','125','68','414','1118','10','0949','1128','99','0','0','','6','0','93','0','0'),
	 ('2015','1','5','1','AA','1169','N3EUAA','LAX','ORD','1330','1443','73','13','1456','245','271','224','1744','2040','34','1935','2114','99','0','0','','26','0','5','68','0'),
	 ('2015','1','9','5','B6','97','N779JB','JFK','DEN','2029','2203','94','28','2231','277','282','248','1626','0039','6','2306','0045','99','0','0','','5','0','0','94','0'),
	 ('2015','1','22','4','UA','821','N847UA','LAS','SFO','0911','1000','49','89','1129','109','159','67','414','1236','3','1100','1239','99','0','0','','99','0','0','0','0'),
	 ('2015','12','20','7','AA','356','N3BVAA','LAX','SFO','1930','2006','36','76','2122','87','150','64','337','2226','10','2057','2236','99','0','0','','99','0','0','0','0'),
	 ('2015','12','26','6','AA','494','N926UW','PHX','DEN','1955','2133','98','15','2148','109','110','87','602','2315','8','2144','2323','99','0','0','','1','0','98','0','0'),
	 ('2015','1','1','4','UA','1139','N78438','DEN','PHX','1905','2018','73','50','2108','115','141','86','602','2234','5','2100','2239','99','0','0','','26','0','73','0','0'),
	 ('2015','1','4','7','F9','667','N929FR','DEN','SFO','2125','2316','111','8','2324','154','142','126','967','0030','8','2259','0038','99','0','0','','0','0','11','88','0'),
	 ('2015','1','7','3','UA','867','N505UA','LAX','JFK','1304','1434','90','29','1503','324','333','298','2475','2301','6','2128','2307','99','0','0','','99','0','0','0','0'),
	 ('2015','1','9','5','DL','2362','N712TW','LAX','JFK','1600','1732','92','40','1812','316','323','276','2475','0148','7','0016','0155','99','0','0','','7','0','0','92','0'),
	 ('2015','1','10','6','NK','188','N503NK','LAS','DTW','0830','1020','110','23','1043','240','229','195','1749','1658','11','1530','1709','99','0','0','','0','0','99','0','0'),
	 ('2015','1','18','7','WN','2082','N280WN','PHX','SFO','1150','1310','80','36','1346','135','154','113','651','1439','5','1305','1444','99','0','0','','99','0','0','0','0'),
	 ('2015','12','25','5','UA','761','N34460','ORD','SFO','0751','0935','104','29','1004','303','298','264','1846','1228','5','1054','1233','99','0','0','','0','0','99','0','0'),
	 ('2015','12','24','4','OO','5196','N778SK','SFO','PHX','1334','1517','103','26','1543','120','116','85','651','1808','5','1634','1813','99','0','0','','0','0','69','30','0'),
	 ('2015','12','11','5','AA','2516','N473AA','ORD','DEN','1715','1825','70','46','1911','164','193','139','888','2030','8','1859','2038','99','0','0','','29','0','21','49','0'),
	 ('2015','12','15','2','WN','2034','N210WN','DEN','LAS','1300','1413','73','51','1504','115','141','86','628','1530','4','1355','1534','99','0','0','','26','0','0','73','0'),
	 ('2015','12','29','2','AA','218','N3AEAA','SFO','LAX','1845','2021','96','19','2040','89','92','52','337','2132','21','2014','2153','99','0','0','','3','0','0','96','0'),
	 ('2015','12','31','4','OO','5651','N768SK','LAS','LAX','0930','1117','107','22','1139','80','72','44','236','1223','6','1050','1229','99','0','0','','0','0','0','99','0'),
	 ('2015','1','4','7','UA','1723','N39418','ORD','SFO','1314','1506','112','15','1521','286','273','251','1846','1732','7','1600','1739','99','0','0','','0','0','0','27','72'),
	 ('2015','1','3','6','UA','765','N543UA','DEN','LAX','1859','1958','59','37','2035','151','191','108','862','2123','46','2030','2209','99','0','0','','40','0','59','0','0'),
	 ('2015','12','20','7','B6','1516','N947JB','SFO','JFK','2100','2218','78','24','2242','318','339','308','2586','0650','7','0518','0657','99','0','0','','21','0','4','74','0'),
	 ('2015','12','22','2','VX','947','N844VA','LAX','SFO','2050','2223','93','13','2236','75','81','60','337','2336','8','2205','2344','99','0','0','','99','0','0','0','0');
