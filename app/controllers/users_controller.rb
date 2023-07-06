class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
      # User creation logic here
        
      @user = User.new(user_params)
      if @user.save
        redirect_to root_path, notice: "Sign up successful. Welcome to the site!"
      else
        render :new
      end
    end

    def show
    end

    def edit
    end

    def destroy
      @user.destroy
      redirect_to root_path, notice: "Admin deleted."
    end

    def update
      if @user.update(user_params)
          redirect_to root_path(@user), notice: 'Admin has been updated successfully.'
      else
          render :edit
      end
  end

    private
    def user_params
        params.require(:user).permit(:email, :encrypted_password)
    end
  end
  