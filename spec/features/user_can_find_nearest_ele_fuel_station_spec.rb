require 'rails_helper'

RSpec.describe "As a user" do
  describe "on the welcome page" do
    it "can see nearest fuel station" do
      # user = User.create(name: "Raymond")

      # allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/'

      click_on "Turing"

      click_on 'Find Neareset Station'

      expect(current_path).to eq("/search")
      #expect to see current stations things
    end    
    it "can see nearest fuel station" do
      # user = User.create(name: "Raymond")

      # allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit '/search'

      click_on "Turing"

      click_on 'Find Neareset Station'

      expect(current_path).to eq("/search")
      #expect to see current stations things
    end
  end
end