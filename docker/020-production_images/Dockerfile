FROM malkab/postgis:gargantuan_giraffe

LABEL author="Juan Pedro Perez"
LABEL email="jp.perez.alcantara@us.com"

EXPOSE 5432

# COPY assets/*.sql /

# COPY assets/initdb.sh /
COPY assets/pg_hba.conf /default_confs/
COPY assets/postgresql.conf /default_confs/
