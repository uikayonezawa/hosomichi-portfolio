class UsersController < ApplicationController
    
    def show
    @nickname = current_user.nickname
    @newinfos = current_user.newinfos.order("updated_at DESC").page(params[:page])
    @papers = current_user.papers.order("firstappeared DESC").page(params[:page])

    end
    
    

end
