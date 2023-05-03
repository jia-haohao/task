class CreateTaskLabels < ActiveRecord::Migration[6.1]
  def change
    create_table :task_labels do |t|
      t.references :label, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end