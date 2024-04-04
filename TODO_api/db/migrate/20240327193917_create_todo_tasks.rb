class CreateTodoTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :todo_tasks do |t|
      t.string :task
      t.boolean :completed
      t.timestamps
    end
  end
end
