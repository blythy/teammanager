class CreatePositionings < ActiveRecord::Migration[6.0]
  def change
    create_table :positionings do |t|
      t.belongs_to :player, null: false, foreign_key: true
      t.belongs_to :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
