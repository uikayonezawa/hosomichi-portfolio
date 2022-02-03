class UsersController < ApplicationController
    
    def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @newinfos = user.newinfos.order("updated_at DESC")
    
    @papers = current_user.papers.order("updated_at DESC").page(params[:page])

    end
    
    

end
