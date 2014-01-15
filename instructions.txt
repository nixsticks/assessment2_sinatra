ASSESSMENT 2: Sinatra and SQL
PART 1: Sinatra

Create a new github repo called "assessment2_sinatra". Build and push a Siantra application that fulfills the following criteria to this repo.

Criteria:

Has a single model, SpaceCats, with 4 attributes: Name, Home Planet, Tagline, Superpower
Has routes that follow a RESTful convention
Has a view that shows all SpaceCats
Has a view that shows a single SpaceCat
Allows the user to create a new SpaceCat
Stores data in a sqlite3 database
Uses any ORM you'd like (ActiveRecord, DataMapper, Sequel)
Uses either Twitter Bootstrap 2 or 3 as well as a custom stylesheet
Uses placekitten.com to provide a stock image for each SpaceCat
Ensure that your application runs locally and then add the link to your repo here:

Now, answer these questions:

What is Sinatra? Where does it run?

What is a Gemfile? How do you use it in your Sinatra Application? Give step by step instructions.

What is an ORM? What are the basic features of an ORM? Why is it helpful?

What is the public folder? What do we use it for?

What is REST? Why is it useful?

Suppose I, with my browser, send an HTTP get request to the route that will render the view of all the SpaceCats. Walk me through step by step how your application handles that request.

PART 2: SQL

Create a database called wizards. The rest of the assesment all will take place in the wizards db.

Create a table called wizards with the following columns (name, age).

Write a statement to count the number of rows in the wizards table. How many wizards are there?

Insert a wizard into the database.

Write a statement to count the number of rows in the wizards table. How many wizards are there now?

Insert another wizard into the database.

Write a statement to change the second wizards age to 21.

Write a statement to change all wizards ages to 40.

Write a statement to delete the last wizard.

Write a statement to delete the wizards table.

Create two data models for wizards. The wizards are going to have a name, an age and two powers each. Let's pretend we're in a world where wizards have many powers, but powers belong to one wizard (two wizards cant have the same power) Each power is going to have a name and a damage amount. Write out the sql to create the two schemas and some sample records. What are the costs/benefits of the two approaches? If you only see one way of doing this that's ok. Please explain any potential problems with your approach. What questions can this schema answer easily? What questions can this schema not answer easily?

Retrieve all the wizards with powers that have the letter "l" in them.

Retrieve all the wizards who have a combined damage of 10 or more.

Retrieve all the wizards sorted by their total damage. Your returned data should look like so.. wizard_name, total_damage.

Create a wizard that has no powers.

Retrieve all wizards that have no powers.

Create a data model for wizards for a world where wizards have many powers and multiple wizards can have the same power. Create some sample records.

Retrieve the first wizard and any powers he/she has with damage greater than 5.

What's the difference between an outer and inner join?

If I just write JOIN, is that an inner or outer join?

When would I want to use an outer join?