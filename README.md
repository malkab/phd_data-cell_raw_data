# Main Cell DB

This is the main project for PhD data, where all results from other PhD Data subprojects coalesce into the main DB. This is not cells database, this is part of the cell repo.


## Workflow

This project defines the database for the data to be celled. This does not contain the cells.

This project should not contain data. All data should be handled in the subprojects and they are tasked with loading results into the database defined by this repo.

The database defined here does not have any defined aprioristic structure, instead, it just defines the DB as a SWARM so subprojects from **malkab-phd-data** can load data into in a controlled manner. Also, in the Docker section the only subsection is the SWARM one.
