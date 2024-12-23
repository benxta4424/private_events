class RenameAttendacesToAttendances < ActiveRecord::Migration[7.2]
  def change
    rename_table :attendaces, :attendances
  end
end
