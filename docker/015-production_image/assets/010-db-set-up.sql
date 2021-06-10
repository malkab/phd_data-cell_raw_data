/*

    Sets up the SunnSaaS database.

*/

\c postgres

drop database if exists cell_raw_data;

create database cell_raw_data;

\c cell_raw_data

create extension postgis;

begin;



commit;
