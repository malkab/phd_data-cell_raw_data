/**

  Selects and creates an union with the municipios of the Sevilla's metropolitan
  area.

*/
drop schema test cascade;

create schema test;

create or replace view test.test as
select
  1, st_setsrid(st_union(geom), 3035) as geom
from
  context.municipio
where cod_mun in ('41091', '41089', '41021', '41086', '41004', '41038', '41044',
  '41059', '41093', '41029', '41028', '41096', '41070', '41017', '41047',
  '41034', '41010', '41040', '41085', '41007', '41081');
