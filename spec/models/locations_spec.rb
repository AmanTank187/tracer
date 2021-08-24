require 'rails_helper'

RSpec.describe Location, type: :model do 
        context 'validations' do 

            before do 
                @user = User.new(username: "amantest",
                email: "amantest@example.com", 
                password: "amantest").save
            end 

            it "saves the location when correct details are given" do 
                location = Location.new(address: "",latitude: 51.4817414, longitude:-0.5203997)
                location.user_id = @user
                location.save 
                expect(location.address).to eq("Cottesbrooke Close")
                expect(location.user_id).to eq(1)
            end 
        end 
end 