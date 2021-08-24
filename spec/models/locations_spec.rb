require 'rails_helper'

RSpec.describe Location, type: :model do 
        context 'validations' do 
            it "it ensures the presence of an address, lat and long" do 
                location = Location.new(address: "",latitude: "", longitude: "").save
                expect(location).to eq(false)
            end 
        end 
end 