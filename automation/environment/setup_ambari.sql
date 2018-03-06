CREATE DATABASE ambari;
\connect ambari;
CREATE SCHEMA ambari;
CREATE USER ambari WITH PASSWORD 'ambari';
GRANT ALL PRIVILEGES ON DATABASE ambari TO ambari;