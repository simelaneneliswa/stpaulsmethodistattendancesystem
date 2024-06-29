class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.references :student
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end
