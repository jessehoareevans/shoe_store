# _Shoe Store_

#### _Allows a user to look up shoes by store or brand and return a price, 05-12-2017_

#### By _Jesse Hoare Evans_

## Description

This application will allow a user to find out information about their favourite shoe brands and stores. The user will be able to navigate to a brand page that will show all of the shoes that are available and will give the user a price. The user will also be able to navigate to a brand page that will show all of the stores that carry their desired shoe and the price. 

## Setup/Installation Requirements

* _Clone this repository https://github.com/jessehoareevans/shoe_store.git_
* _Open terminal and navigate to shoe_store, then run bundle to install all required gems_
* _Type ruby.app into the terminal to open the page in sinatra and then open http://localhost:4567 in your web browser_

_* _Run psql to create a new database
* _Create the database "shoe_store"_
* _Create 3 tables in the terminal. One for the store(:name, :string, :brand_id, :integer). One for the brand(:name, :string, :price, :integer, :store_id, :integer). And one for a join table (:brand_id, :integer, :store_id, :integer)

## Technologies Used

_Ruby, HTML, CSS

Ruby gems : Sinatra, pry, capybara, rspec_

### License

*MIT*

Copyright (c) 2017 **_Jesse Hoare Evans_**
