class CreatePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :papers do |t|
      t.text :author
      t.text :title
      t.string :journal
      t.string :number
      t.date :published
      t.text :published_url
      t.date :firstappeared
      t.text :firstappeared_url
      t.text :category
      t.integer :fiscalyear
      

      t.timestamps
    end
  end
end
