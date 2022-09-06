require "rails_helper"

RSpec.describe "Users page" do
  it "shows a list of users" do
    visit "/"

    expect(page).to have_content("Ben Stacey")
  end
end