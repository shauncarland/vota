class AddUuidToRepresentatives < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :uuid, :string
  end
end
