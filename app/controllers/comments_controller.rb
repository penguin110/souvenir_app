class CommentsController < ApplicationController
    def create
        @comment = current_user.comments.new(comment_params)
        # @comment = Comment.new(comment_params)
        # @comment.user_id = current_user.id
        if @comment.save
            redirect_back(fallback_location: root_path)
        end
    end
    private
    def comment_params
        params.require(:comment).permit(:content,:souvenir_id,:user_id)
    end
end
