class UsersController < ApplicationController

    before_action :set_user, only: [:show] 
    before_action :authenticate_user!
    
    def show 
        @locations = @user.locations.all
    end 

    private 

    def set_user
        @user = User.find(params[:id])
    end 
end
