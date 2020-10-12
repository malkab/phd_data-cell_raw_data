/**

  Preparations for context schema processing.

*/
create database cell_raw_data;

\c cell_raw_data

create extension postgis;

begin;

create schema context_process;

commit;
