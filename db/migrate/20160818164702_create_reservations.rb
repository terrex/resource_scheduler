class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :room, foreign_key: true
      t.timestamp :from
      t.timestamp :to
      t.string :reserved_by
      t.text :description

      t.timestamps
    end
  end
end
