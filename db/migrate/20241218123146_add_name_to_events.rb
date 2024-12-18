class AddNameToEvents < ActiveRecord::Migration[7.2]
  def change
    add_column :events, :name, :string
  end
end
