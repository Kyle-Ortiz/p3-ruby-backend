Phase-3-backend-order-manager

  For this project, I have created a very simple order manager intended for use in the screen printing industry.
My father runs a screen printing business, and I wanted to attempt to create a free alternative to the paid services 
privided to screen print work. 

Overview of Backend Setup
  I have three main classes that I am running CRUD interactions on (no update actions, yet), those being: 
  Customer, Order, and Invoice. 
  
  The Customer class has a one-to-many relationship with both the other classes. 
  (Orders and Invoices belong to Customer).
  
  The routes currently in use are: 
  Customer: get, create, delete
  Order: get, create, delete
  Invoice: get, create
  
  The reasoning behind these being that you will need to add customers to your database to keep track of their information, and then create orders and invoices 
  FOR those customers. A customer may not want to do business anymore, so you can remove them and the same for each one of their orders. Invoices are good to have     no matter if the order is cancelled or not, for record keeping purposes. 
  
  

## Learning Goals

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

Congrats on getting through all the material for Phase 3! Now's the time to put
it all together and build something from scratch to reinforce what you know and
expand your horizons.

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Requirements

For this project, you must:

- Use Active Record to interact with a database.
- Have a minimum of two models with a one-to-many relationship.
- Create API routes in Sinatra that handles at least three different CRUD
  actions for at least one of your Active Record models.
- Build a separate React frontend application that interacts with the API to
  perform CRUD actions.
- Use good OO design patterns. You should have separate classes for each of your
  models, and create instance and class methods as necessary.


