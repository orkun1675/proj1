# Q0: Why is this error being thrown?

The two lines in the HomeController index method are trying to access a model called "Pokemon" which does not exist yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Because the the first line in HomeController index method is fetching all pokemons that do not have a trainer, the second line is choosing a random random pokemon from this list, and the index.html.erb file is displaying this pokemon. All these pokemons are wild (do not have a trainer).

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

It is creating a new method with the specified css classes (button and medium). When this button is clicked it sends a patch request to the capture_path. The capture_path is defined in the routes.rb file. The id of the current pokemon is also passed in as a parameter. The method pokemon#index is called and the parameter pokemon id is passed in.

# Question 3: What would you name your own Pokemon?

I would name it 'Halixo'.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

It was the path "trainer_path". I first got an error as I didn't pass in anything. Then I passed in the "current_trainer" so it could redirect back to the logged in trainers profile page by using the id value from "current_trainer".

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

After the header but before the body of the page the "application.html.erb" tells the "_messages.html.erb" to render any errors. Errors are stored in a variable called "flash". Because we populate the flash variable with the given line, the error shows up on the new pokemon page.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

Finished all extra credit. Website deployed at:
https://protected-beach-76564.herokuapp.com/
