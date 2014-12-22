require 'rails_helper'

RSpec.describe "Tasks", :type => :request do
  describe "GET /tasks" do
    it "lists all the tasks submitted" do
			Task.create!(:name => "Go to bed")
      visit new_task_path
      expect(page).to have_content("Go to bed")
    end
	end
	describe "POST /tasks" do
		it "Adds the task to the list of posts" do
			visit new_task_path
			fill_in "task_name", :with => "Go to office"
			click_button "Add task"
			expect(page).to have_content("Go to office")
		end
	end
end
