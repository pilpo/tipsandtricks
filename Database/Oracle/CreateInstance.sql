select * from dba_data_files;  

CREATE BIGFILE TABLESPACE RMS_MY_APPLICATION_DATA DATAFILE '/io/oradata/ENVIR/RMS_MY_APPLICATION_DATA_BG_01.dbf' SIZE 3G;
CREATE USER "MY_APPLICATION"  IDENTIFIED BY "MY_APPLICATION"  DEFAULT TABLESPACE RMS_MY_APPLICATION_DATA  TEMPORARY TABLESPACE TEMP  QUOTA UNLIMITED on RMS_MY_APPLICATION_DATA;
   
CREATE BIGFILE TABLESPACE RMS_MY_APPLICATION_AUDIT DATAFILE '/io/oradata/ENVIR/RMS_MY_APPLICATION_AUDIT_BG_01.dbf' SIZE 1G;
CREATE USER "MY_APPLICATION_AUDIT"  IDENTIFIED BY "MY_APPLICATION_AUDIT"  DEFAULT TABLESPACE RMS_MY_APPLICATION_AUDIT  TEMPORARY TABLESPACE TEMP  QUOTA UNLIMITED on RMS_MY_APPLICATION_AUDIT;

 grant all privileges to "MY_APPLICATION" identified by "MY_APPLICATION";
 grant all privileges to "MY_APPLICATION_AUDIT" identified by "MY_APPLICATION_AUDIT";
