class AddAlphabetnameToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :alphabet_name, :string
  end
end
