

Given("I am an authenticated user") do
	@user = create(:user)
    visit new_user_session_path
    fill_in "user[email]" , :with => @user.email
    fill_in "user[password]", :with => @user.password
    click_button "Accedi"
end

Given("I am on the home page") do
    page.has_content?("User: "+ @user.username)
end

When /I click on "Esci"/ do
    click_on("Esci")
end

Then("I should be not authenticated") do
    page.has_content?("Log in")
end