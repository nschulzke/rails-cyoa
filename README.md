# Choose Your Own Adventure

This program was built as part of a class I was helping to teach on Ruby on Rails for High Schoolers. Its purpose was to put something together quickly to demonstrate how quickly Rails could be used to build things the students would find interesting. As such, it's simple by design.

Software versions:
* Ruby 2.4.0
* Rails 5.1.0
* Postgresql 9.3.14

To install:
* Clone the repository
* Start postgres server
* `bundle install`
* `rails db:create && rails db:migrate`
* `rails s` to start the server

There's a simple starting game provided if you run `rails db:setup`.

Navigate to {server_address}/rooms to get started building out the game.

The game is modeled as a graph made of Rooms (vertices) and Paths (edges). You create new Rooms, and then can link them together with Paths. Rooms have titles and descriptions, Paths have titles for the choice text.
