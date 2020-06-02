class CreateUniversitySubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :university_subjects do |t|
      t.references :university, null:false, foreign_key: true
      t.references :subject, null:false, foreign_key: true

      t.timestamps
    end
  end
end
