RSpec.describe User, type: :model do 
    context 'validations' do 
        it "it ensures the presence of a username" do 
            user = User.new(username: "",email: "", password: "").save
            expect(user).to eq(false)
        end 

        it "Saves the user" do 
            user = User.new(username: "amantest",
            email: "amantest@example.com", 
            password: "amantest").save
            expect(user).to eq(true)
        end 
    end 
end 