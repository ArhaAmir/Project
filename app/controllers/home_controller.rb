class HomeController < ApplicationController
    def index
        @users = User.all
        @userdums = Userdum.all
    end
    def about
    end
    
end