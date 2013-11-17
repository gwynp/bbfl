class ChangeDefaultValueForYearInKeepers < ActiveRecord::Migration
  def change
  	change_column :keepers, :year, :integer, :default => 2013
  end
end
