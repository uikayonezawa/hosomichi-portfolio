class MembersController < ApplicationController
  def index
      @members = Member.includes(:user).order(order: "ASC")
  end
  
def new 
end



def create 
  Member.create(name: member_params[:name],
  surname: member_params[:surname],
  name_in_alphabet: member_params[:name_in_alphabet],
  surname_in_alphabet: member_params[:surname_in_alphabet],
  e_mail: member_params[:e_mail],
  role: member_params[:role],
  affiliation: member_params[:affiliation],
  position: member_params[:position],
  left_on: member_params[:left_on],
  specialty: member_params[:specialty],
  image: member_params[:image],
  order: member_params[:order],
  user_id: current_user.id  
  )

end

def destroy
member = Member.find(params[:id])
member.destroy if member.user_id == current_user.id
end

def edit
@member = Member.find(params[:id])
end

def update
    member = Member.find(params[:id])
     if member.user_id == current_user.id
        member.update(member_params) 
     end
end


def show
@member = Member.find(params[:id])
end

private
def member_params
  params.permit(:name, :surname, :name_in_alphabet, :surname_in_alphabet, :e_mail, :role, :affiliation, :position, :entered_on, :left_on, :specialty, :image, :order )
end

def move_to_index
  redirect_to action: :index unless user_signed_in?
end

end
