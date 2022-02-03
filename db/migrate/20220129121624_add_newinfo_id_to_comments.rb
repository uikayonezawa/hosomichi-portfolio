class AddNewinfoIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :newinfo_id, :int
  end
end
