class AddUserIdToNewinfos < ActiveRecord::Migration[5.2]
  def change
    add_column :newinfos, :user_id, :integer
  end
end
