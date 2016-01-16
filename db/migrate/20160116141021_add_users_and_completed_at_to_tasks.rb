class AddUsersAndCompletedAtToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :user, index: true, foreign_key: true
    add_column :tasks, :completed_at, :datetime
  end
end
