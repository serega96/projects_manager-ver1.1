class CreateTasksUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks_users do |t|
      t.references :task, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
