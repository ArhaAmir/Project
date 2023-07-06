class HelpsController < ApplicationController
    def index
        user = Help.find(params[:userdum_id])
        @helps = user.requestContent
    end
    def show
    end
end