RSpec.describe User, type: :model do 
    context 'validations' do 
        it "it ensures the presence of a username" do 
            user = User.new(username: "",email: "", password: "").save
            expect(user).to eq(false)
        end 
    end 
end 