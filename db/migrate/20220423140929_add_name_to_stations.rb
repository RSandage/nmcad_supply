class AddNameToStations < ActiveRecord::Migration[6.1]
  def change
    add_column :stations, :name, :string
  end
end
