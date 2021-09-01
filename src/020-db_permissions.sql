/**

  Preparations for context schema processing. This script was run once the
  databases where in place, this is not needed to be run after restoration from
  dumps, since dumps restore permissions.

*/

-- Set the name of the database and the owner and read-only user
\set dbname cell_raw_data
\set dbowneruser cell_master
\set dbreadonlyuser cell_readonly

\c :dbname

begin;

-- Drop default privileges for public
revoke all privileges on database :dbname
from public;

revoke all privileges on schema public
from public;

-- Drop default privileges for the read-only user
revoke all privileges on database :dbname
from :dbreadonlyuser;

revoke all privileges on schema public
from :dbreadonlyuser;

grant connect on database :dbname
to :dbreadonlyuser;

/**

  Permissions for cell_readonly.

  THIS SHOULD GO TO THE SUBPROJECTS.

*/
grant usage on schema context
to :dbreadonlyuser;

grant select on all tables in schema context
to :dbreadonlyuser;

grant usage on schema hic
to :dbreadonlyuser;

grant select on all tables in schema hic
to :dbreadonlyuser;

grant usage on schema mdt
to :dbreadonlyuser;

grant select on all tables in schema mdt
to :dbreadonlyuser;

grant usage on schema poblacion
to :dbreadonlyuser;

grant select on all tables in schema poblacion
to :dbreadonlyuser;

grant usage on schema public
to :dbreadonlyuser;

grant select on all tables in schema public
to :dbreadonlyuser;

grant usage on schema test
to :dbreadonlyuser;

grant select on all tables in schema test
to :dbreadonlyuser;

grant usage on schema test_cell_data
to :dbreadonlyuser;

grant select on all tables in schema test_cell_data
to :dbreadonlyuser;

grant usage on schema test_mdt_convolution
to :dbreadonlyuser;

grant select on all tables in schema test_mdt_convolution
to :dbreadonlyuser;

commit;
