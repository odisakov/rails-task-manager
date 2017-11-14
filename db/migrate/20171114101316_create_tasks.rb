class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :due_date
      t.string :completion_status
      t.string :responsible

      t.timestamps
    end
  end
end
