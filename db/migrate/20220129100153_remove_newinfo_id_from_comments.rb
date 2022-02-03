class RemoveNewinfoIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :newinfo_id, :int
  end
end
