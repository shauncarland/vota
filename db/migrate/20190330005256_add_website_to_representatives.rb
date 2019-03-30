class AddWebsiteToRepresentatives < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :website, :string
  end
end
