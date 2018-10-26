# Q0: Why are these two errors being thrown?
The pending migrations error means that the current 'version' of the database is not updated with the newest schema. The uninitialized constant HomeController::Pokemon error happens because the Pokemon model has not been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random  Pokemon appear because you seed the database with random Pokemon using the command rails db:seed.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button with the phrase "Throw a Pokeball!", routes the path to id of a specific Pokemon to be captured, makes the button medium sized, and specifies that this is a patch request because we are updating data. More specifically, "capture_path(id: @pokemon)" "captures" a Pokemon by taking in a Pokemon id and assigning that to a specific trainer.

# Question 3: What would you name your own Pokemon?
Noms

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
The damage method redirects to trainer_path(id: current_trainer.id) because you want to be on the same trainer's profile page after causing damage to a Pokemon. This is a path that takes in the id of the current trainer that is logged into the PokePortal, so after every damage, you stay on the same page with only the health level decrementing by 10 each time and in the case that the health is <= 10, the Pokemon is destroyed. In the latter case, we still stay on the current trainer's profile page with the list of Pokemon and its attributes shown.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
This shows error messages because errors.full_messages returns an array of all the error messages which is why you see the brackets and quotes. .to_sentence turns that array into a readable, cohesive sentence.

# Give us feedback on the project and decal below!
The project was really fun, and I throughly enjoyed doing it. It helped me to better grasp and understand Rails concepts. I asked quite a lot of questions at office hours (sorry), where I was able to clarify any conceptual misunderstandings, confusion with how Rails works, and  how to approach different tasks for the project. Though I still don't understand everything, I am learning a lot!! This project and the class thus far has been very enjoyable and well-taught!


# Extra credit: Link your Heroku deployed app
