class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.integer :degree
      t.integer :fee
      t.text :requirements
      t.text :description
      t.string :video_url
      t.references :university, null:false, foreign_key: true
      t.references :subject, null:false, foreign_key: true

      t.timestamps
    end
  end
end
