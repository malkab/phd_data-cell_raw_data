Builds the production image for the PostgreSQL including the database initializator script.

Steps:

- modify in **common** and **wp-2019-05-22/010-db-set-up.sql** the version number;

- modify the **initdb.sh** and / or **initdh.sh.configure** files for not loading test data;

- activate the **production_image** context;

- run **005** or:

  - run **010-docker-build-postgis-db.sh**;

  - check with **020-docker-run-test-production-pg.sh** if needed. This test container will use the volumes of the dev environment, so to test the deployment of the database use an internal container volume commenting the volume section;

  - push to production with **040** (API token needed).
