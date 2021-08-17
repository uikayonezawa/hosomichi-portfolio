class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer     :order
      t.string      :name
      t.string      :surname
      t.string      :role
      t.string      :affiliation
      t.string      :position
      t.date :begin
      t.date :end
      t.text        :specialty
      t.text        :image
      t.timestamps
    end
  end
end
