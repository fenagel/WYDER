class CreateUniversities < ActiveRecord::Migration[6.0]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :location
      t.integer :kind

      t.timestamps
    end
  end
end
