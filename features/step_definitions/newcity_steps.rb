
Given("I am an authenticated users") do
	@user = create(:user)
    visit new_user_session_path
    fill_in "user[email]" , :with => @user.email
    fill_in "user[password]", :with => @user.password
    click_button "Accedi"
end

Given("I am on home page") do
    page.has_content?("User: "+ @user.username)
end

When /I click on "Button"/ do
    find(:xpath, ".//a[i[contains(@class, 'large material-icons')]]").click
end

Then("I should redirect to the city registration page") do
    page.has_content?("Aggiungi città")
end