class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text :title, null: false
      t.text :description

      t.timestamps
    end
  end
end
