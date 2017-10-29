require "spec_helper"

feature "a user has a list of foods" do
	# USER STORY:
	# as a user
	# I want to add a food item to my list
	# so that I can keep track of all the foods I want to eat
	# ACCEPTANCE CRITERIA:
	# user must enter a food item
	# user must enter a vendor
	# if a user forgets a field, errors are shown
end

context "create" do
	scenario "a user creates a food item" do
		visit "/"
		click_link "Add a Noms!"
		fill_in "Food Item", with: "Cheese Curds"
		fill_in "Vendor", with: "The Original Deep Fried Cheese Curds"
		click_button "Submit"
		expect(page).to have_content("Cheese Curds")
	end
end

