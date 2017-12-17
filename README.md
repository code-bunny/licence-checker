# Bunny Licence checker

## Developer Setup

* Install docker
```Go to the docker website and find insturctions for your platform```

* Setup the app
```docker-compose run app rake db:create && rake db:schema:load && rake db:test:prepare```

* (Optional) the above command may require you to run build first
```docker-compose build```

* Running tests
```docker-compose run app rake test```

* Seeding the development database
```docker-compose run app rake db:schema:load && rake db:seed```

* Running on your dev enviroment
```docker-compose up```

The app will be on port 5000 of localhost.

# About the app

Write an API to check the status of the current user's licence. Assume that:
* Authentication is already in place, and that your API will only accept authenticated and authorized requests;
* Products can have sub-Products attached, representing export modules available for a version of GameMaker;
* A User has a Licence for a version of GameMaker, and optionally Licences for export module sub-Products;
* A user has only one parent Licence, which can have multiple sub-licences attached;
* The parent and sub-licences can be expired/revoked independently.

So lets set, we have auth. Great that saved a few minutes.
Products and sub-products, also known as modules. But lets go for products
A user has a primary licance key for the main product
A user can have many sub licance keys for products and sub-products
All licences can expire individually

So the database looks something like this:

## users
licence_key

## licences
user_id | key | expires_at | expired_at | product_id

## products
product_id | description


Note: Assume ActiveRecord defaults (id, created_at, updated_at)
