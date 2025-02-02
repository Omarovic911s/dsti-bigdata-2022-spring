SET hivevar:clusterUsername=p.nom-dsti;
-- DO NOT USE '.' NOR '-' IN HIVEUSERNAME
SET hivevar:hiveUsername=p_nom_dsti;

CREATE EXTERNAL TABLE IF NOT EXISTS dsti_2022_spring.${hiveUsername}_nyc_drivers_ext (
  driver_id INT,
  name STRING,
  ssn INT,
  location STRING,
  certified STRING,
  wage_plan STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/education/dsti_2022_spring/${clusterUsername}/lab4/nyc_drivers'
TBLPROPERTIES ('skip.header.line.count'='1');
