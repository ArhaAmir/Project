class UserdumsController < ApplicationController
    def index
      @userdums = Userdum.all
    end
  
    def new
      @userdum = Userdum.new
      @userdum.build_help
    end
  
    def create
      @userdum = Userdum.new(userdum_params)
      @userdum.build_help
      if @userdum.save
        redirect_to root_path, notice: "Request submitted successfully."
      end
    end
  
    def show
      @userdum = Userdum.find(params[:id])
    end
  
    def edit
      @userdum = Userdum.find(params[:id])
    end
  
    def update
      @userdum = Userdum.find(params[:id])
      if @userdum.update(userdum_params)
        redirect_to root_path, notice: 'User request has been updated successfully.'
      else
        render :edit
      end
    end
  
    def destroy
      @userdum = Userdum.find(params[:id])
      @userdum.destroy
      redirect_to root_path, notice: "Request deleted."
    end
  
    def help
      @userdum = Userdum.find(params[:id])
      @helps = @userdum.help
      if @helps.present?
        @helps_content = @helps.requestContent
      else
        @helps_content = "No helps found"
      end
    end
  
    private
    def userdum_params
        params.require(:userdum).permit(:email, :contact, :name, help_attributes: [:requestContent])
    end
       
end