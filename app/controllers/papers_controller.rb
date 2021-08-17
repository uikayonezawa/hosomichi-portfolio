class PapersController < ApplicationController
    before_action :move_to_index, except: :index
  
    def index
    @papers = Paper.includes(:user).order('updated_at DESC').page(params[:page]).per(5)

    end
    
    def new
    end
    
    def create
    Paper.create(author: paper_params[:author], title: paper_params[:title], 
    journal: paper_params[:journal], number: paper_params[:number], 
    published: paper_params[:published], published_url: paper_params[:published_url],
    firstappeared: paper_params[:firstappeared], firstappeared_url: paper_params[:firstappeared_url],
    category: paper_params[:category],
    fiscalyear: paper_params[:fiscalyear],
    user_id: current_user.id )
    end
    
    def destroy
    paper = Paper.find(params[:id])
    paper.destroy if paper.user_id == current_user.id
    end
    
    def edit
    @paper = Paper.find(params[:id])
    end
    
    def update
    paper = Paper.find(params[:id])
     if paper.user_id == current_user.id
        paper.update(paper_params) 
     end
    end

    private
    def paper_params
    params.permit(:author, :title, :journal, :number, :published, :published_url, :firstappeared, :firstappeared_url, :category, :fiscalyear)
    end

    def move_to_index
    redirect_to action: :index unless user_signed_in?
    end

end
