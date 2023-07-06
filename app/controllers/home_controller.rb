class HomeController < ApplicationController
    def index
        @users = User.all
        @userdums = Userdum.all
    end
    def about
    end
    def destroy
        @userdum.destroy
        redirect_to root_path, notice: "User deleted."
    end
end