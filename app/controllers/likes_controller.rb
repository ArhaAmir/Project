class LikesController < ApplicationController

    def create 
        @like = current_user.likes.new(like_params)
        if !@like.save
            flash[:notice]=@like.errors.full_message.to_sentence
    end
    redirect_to @like.story
    end

    def destory
        @like = current_user.likes.find(params[:id])
        story = @like.story
        @like.destory
        redirect_to story
    end

    private
    def like_params
        params.require(:like).permit(:story_id)
    end
end
