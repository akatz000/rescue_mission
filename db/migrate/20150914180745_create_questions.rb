class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false, length: {minimum: 40}
      t.string :text, null: false, length: { minimum: 150 }

      t.timestamps null: false
    end
  end
end
