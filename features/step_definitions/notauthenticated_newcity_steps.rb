
Given("I am a not authenticated users") do
	visit citta_path
end

Given("I am on home") do
    page.has_content?("citta")
end

When /I click on "button"/ do
    find(:xpath, ".//a[i[contains(@class, 'large material-icons')]]").click
end

Then("I should redirect to the home") do
    page.has_content?("citta")
end