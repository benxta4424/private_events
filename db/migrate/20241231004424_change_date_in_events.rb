class ChangeDateInEvents < ActiveRecord::Migration[7.2]
  def change
    change_column :events, :date, :date
  end
end
