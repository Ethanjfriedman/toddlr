class CreatePrattles < ActiveRecord::Migration
  def change
    create_table :prattles do |t|
      t.string :content
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
