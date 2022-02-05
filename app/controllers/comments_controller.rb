class CommentsController < ApplicationController
    
def create
comment = Comment.create(text: comment_params[:text], newinfo_id: comment_params[:newinfo_id], user_id: current_user.id)
redirect_to "/newinfos/#{comment.newinfo.id}"
end

def destroy
        
@newinfo = Newinfo.find(params[:newinfo_id])
        comment = @newinfo.comments.find(params[:id])
        if comment.user != current_user
            redirect_to request.referer
        end
        comment.destroy
        redirect_to request.referer
        
end


private
def comment_params
params.require(:comment).permit(:text).merge(user_id: current_user.id, newinfo_id: params[:newinfo_id])
end
  
end
