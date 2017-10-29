# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')

User.create(first_name: 'Dan', last_name: 'Glick')
User.create(first_name: 'Pan', last_name: 'Flick')

Meetup.create(title: 'soccer', description: 'play with us', location: 'boston')
Meetup.create(title: 'knitting', description: 'make blankets', location: 'new york')

