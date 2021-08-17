class NewinfosController < ApplicationController
   before_action :move_to_index, except: :index
  
  def index
    # productsテーブルから最新順に作品を２０件取得する
    @newinfos = Newinfo.includes(:user).order('updated_at DESC').page(params[:page]).per(10)
  end
  
  def new 
  end
  

  def show
    # productsテーブルから該当するidの作品情報を取得し@productの変数へ代入する処理を書いて下さい
    @newinfos = Newinfos.new # 問題3ではこのコードは消して新しくコードを書いてください
  end

  def search
    # 検索フォームのキーワードをあいまい検索して、productsテーブルから20件の作品情報を取得する
    @newinfos = []
  end
  
   def create 
     Newinfo.create(title: newinfo_params[:title], url: newinfo_params[:url], user_id: current_user.id)
   end
   private
   def newinfo_params
   params.permit(:title, :url)
   end
   
  def move_to_index
  redirect_to action: :index unless user_signed_in?
  end

end