# Jungle

A mini e-commerce application built with Rails 6.1 that allows users to create an account, login and purchase items using a Strip teting credit card. This app also keeps track of the product inventory and allows 'Admin' users to access greater functionality, such as adding and deleting inventory products and categories that are stored in the database.

# Getting Started

Create a new repository using this repository as a template. Clone your repository onto your local device. Install dependencies using the npm install command. The app will be served at http://localhost:8080/. Go to http://localhost:8080/ in your browser. Follow the setup instructions below to get started.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails has issues with authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use will need a Strip account to access this facility.
Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.
More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Testing using Cypress
- Xquartz required for Cypress testing

## Screenshots

!["Screenshot of HomePage"](https://github.com/Cyber-Sam33/jungle-rails/blob/master/docs/Homepage.png)
!["Screenshot of Cart Purchase"](https://github.com/Cyber-Sam33/jungle-rails/blob/master/docs/cart_purchase.png)
!["Screenshot of Prouct Inventory"](https://github.com/Cyber-Sam33/jungle-rails/blob/master/docs/prduct_inventory.png)
