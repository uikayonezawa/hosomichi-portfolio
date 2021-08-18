class AddNameAlphabeticalToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :name_in_alphabet, :string
    add_column :members, :surname_in_alphabet, :string
  end
end
