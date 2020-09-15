class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.references :student, null: false, foreign_key: true
      t.string :title
      t.string :subject

      t.timestamps
    end
  end
end
