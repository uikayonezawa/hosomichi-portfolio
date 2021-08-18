class RemoveAlphabetNameFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :alphabet_name, :string
  end
end
