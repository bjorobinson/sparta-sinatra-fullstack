# Sparta Sinatra FullStack
A task to create a full-stack website with two resources using Sinatra, and [Mockaroo](https://www.mockaroo.com/)

# Cloning the Repo
Copy the following line into the desired directory
`git@github.com:bjorobinson/sparta-sinatra-fullstack.git`

# Seeding the Data
With [Postgres](http://postgresapp.com/) installed:

Type `psql` to be able to access a database, followed by the following command:

`CREATE DATABASE mockaroo_car_and_driver`

If you wish to use a different database name, this will involve altering the programs controllers, so it is not advised.

Finally, seed the information into the database with the following command:

`psql -f seed.sql mockaroo_car_and_driver`

Again, if you called the database something different you would use that name after `seed.sql`.
