class CreateNewinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :newinfos do |t|
      t.date :updated
      t.text :title 
      t.text :url

      t.timestamps
    end
  end
end
