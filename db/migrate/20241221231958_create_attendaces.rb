class CreateAttendaces < ActiveRecord::Migration[7.2]
  def change
    create_table :attendaces do |t|
      t.timestamps
      t.references :event, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
    end
  end
end
