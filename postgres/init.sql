CREATE USER testuser;
CREATE DATABASE testdb;
GRANT ALL PRIVILEGES ON DATABASE testdb TO testuser;
ALTER USER testuser  WITH PASSWORD 'pass';
\c testdb
CREATE TABLE testtable
(
  c1 character varying COLLATE pg_catalog."default" NOT NULL,
  c2 character varying COLLATE pg_catalog."default" NOT NULL,
  CONSTRAINT testtable_pkey PRIMARY KEY (c1)
);
alter table testtable owner to testuser;
