# Main Cell DB

This is the main project for PhD data, where all results from other PhD Data subprojects coalesce into the main DB. This is not cells database, this is part of the cell repo.

However, at the main development / testing / little production environment housed at kepler, this database is in the same instance as the cell database.


## Workflow

This project defines the database for the data to be celled. This does not contain the cells.

This project should not contain data. All data should be handled in the subprojects in the **malkab-phd-data** group and they are tasked with loading results into the database defined by this repo. Some data repos used in the thesis that used the scaffold defined in this repo are:

- **phd_data-hic:** HIC data;
- **phd_data-context_data:** assorted context data;
- **phd_data-proyecto_nacional_data:** the old Proyecto Nacional data;
- **phd_data-poblacion:** poblacion data.

The database defined here does not have any defined aprioristic structure, instead, it just defines the DB as a SWARM so subprojects from **malkab-phd-data** can load data into in a controlled manner. Also, in the Docker section the only subsection is the SWARM one.


## DB Set Up

After deploying the production SWARM or the dev Compose, the **src/010** script must be run. This will create the needed users into the database.

There are some scripts that should be run before and after DB restoration to handle user permissions:

- **src/010:** preparation of the database, user creation;

- **src/020:** this is an old script that added permissions to existing databases and that doesn't need to be run after restoration from dumps since they add permissions to the restored DB.
