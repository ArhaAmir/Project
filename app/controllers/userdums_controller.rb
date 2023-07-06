class UserdumsController < ApplicationController
    def index
        @userdums = Userdum.all()
    end
    def new
        @userdum = Userdum.new
    end

    def create
      # Userdum creation logic here        
      @userdum = Userdum.new(userdum_params)
      @userdum.save
    end

    def show
    end

    def edit
    end
    def destroy
      @userdum = Userdum.find(params[:id])
      @userdum.destroy
      redirect_to root_path, notice: "User deleted."
    end
    def helps
        if @userdum.helps(userdum_params)
            @helps = Help.find_by(userdum_id: @userdum.id)
            @helps = @helps.userdum_id
        else
            @helps = "No helps found"
        end
    end
    def update
      if @userdum.update(userdum_params)
          redirect_to root_path(@userdum), notice: 'User has been updated successfully.'
      else
          render :edit
      end
    end

    private
    def userdum_params
        params.require(:userdum).permit(:email, :password, :bio, :contact, :name)
    end
end