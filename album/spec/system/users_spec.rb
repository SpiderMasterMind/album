require "rails_helper"

RSpec.describe "Users page" do
  it "shows a list of users" do
    FactoryBot.create(:user, first_name: "Ben", last_name: "Stacey")
    visit "/"

    expect(page).to have_content("Ben Stacey")
  end
end