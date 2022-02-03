class CommentsController < ApplicationController
    
def create
comment = Comment.create(text: comment_params[:text], newinfo_id: comment_params[:newinfo_id], user_id: current_user.id)
redirect_to "/newinfos/#{comment.newinfo.id}"
end

private
def comment_params
params.require(:comment).permit(:text).merge(user_id: current_user.id, newinfo_id: params[:newinfo_id])
end
  
end
