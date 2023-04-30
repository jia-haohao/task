class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.date :deadline, null: false
      t.string :priority, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end
