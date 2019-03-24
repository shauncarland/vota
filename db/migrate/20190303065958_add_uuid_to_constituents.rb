class AddUuidToConstituents < ActiveRecord::Migration[5.2]
  def change
    add_column :constituents, :uuid, :string
  end
end
