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

        it "Does not save the user if password does not meet requirements" do 
            user = User.new(username: "amantest",
            email: "amantest@example.com", 
            password: "a").save
            expect(user).to eq(false)
        end 

        it "Does not save the user if email has already been used" do 
            user1 = User.new(username: "amantest",
            email: "amantest@example.com", 
            password: "amantest").save

            user = User.new(username: "amantest20",
            email: "amantest@example.com", 
            password: "amantest1").save

            expect(user).to eq(false)
        end 
    end 
end 