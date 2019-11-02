# Q0: Why are these two errors being thrown?
Because we need to generate a pokemon model and run db:migrate!!!

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

We use db:seed to seed the database with the seed file which specifies 4 pokemon types, each with a name, ndex, and random level. 
@pokemon is assigned to one of these at random. They only appear though if the pokemon doesn't have a trainer. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
adds a button to the home screen to throw a pokeball and capture the pokemon by using
button_to to generates a form that uses capture_path passing in the current logged in trainer id. 
patch is used because we are updating a resource like the trainer attribute of the captured pokemon.

# Question 3: What would you name your own Pokemon?
  DooDooHeadMacGillicudie III

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed the trainer_path to the redirect_to with the current trainer_id.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This line checks if the pokemon has errors. Then it stores any error messages in the flash hash with the key :error
full_messages.to_sentence then renders them so they can be shown on the form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
