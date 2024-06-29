class CreatePresences < ActiveRecord::Migration[6.1]
  def change
    create_table :presences do |t|
      t.references :student, null: false, foreign_key: true
      t.date :date
      t.string :status

      t.timestamps
    end
  end
end
