class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string      :name
      t.text        :text
      t.text        :image

      t.timestamps
    end
  end
end
