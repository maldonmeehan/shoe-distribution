## Ruby Database with Active Record - Many-to-Many - Shoe Distribution

An an app that allows users to keep track of shoe brands and stores, July 22, 2016

By Maldon Meehan

## Description

An Epicodus independent student project to practice Ruby databases with Active Record using many-to-many associations.

The project was to write a program to track shoe brands and what stores they are in. Here are the user stories:

* As a user, I want to be able to add, update, delete and list shoe stores.

* As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).

* As a user, I want to be able to add shoe brands to a store to show where they are sold.

* As a user, I want to be able to see all of the brands a store sells on the individual store page.

* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.

* As a user, I do not want stores and shoes to be saved if I enter a blank name.

## Setup/Installation Requirements

Install *Recipe Box* by cloning the repository.  
```
$ git clone https://github.com/maldonmeehan/shoe-distribution.git
```

Install required gems:
```
$ bundle install
```

Run Postgress:
```
$ postgres
```

Open a new window and run:
```
$ rake db:create
$ rake db:migrate
$ rake db:test:prepare
```

Start the Sinatra webserver:
```
$ ruby app.rb
```

Navigate to `localhost:4567` in your browser of choice.

## Known Bugs

No known bugs at this point

## Support and contact details

If you have any questions please feel free to contact Maldon on github

## Technologies Used

* Ruby
* Postgres
* Sinatra

### License

MIT License

Copyright (c) 2016, **Maldon Meehan, Epicodus**
