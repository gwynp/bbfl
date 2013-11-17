class CreateKeepers < ActiveRecord::Migration
  def change
    create_table :keepers do |t|
      t.string :first
      t.string :last
      t.string :team
      t.integer :year
      t.integer :keeper_year

      t.timestamps
    end
  end
end
