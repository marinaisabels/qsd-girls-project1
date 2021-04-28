class AddFinalizedAtToDiaries < ActiveRecord::Migration[6.0]
  def change
    add_column :diaries, :finalized_at, :datetime
  end
end
