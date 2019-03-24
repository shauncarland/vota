class AddMoreColumnsToRepresentative < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :first_name, :string
    add_column :representatives, :last_name, :string
  end
end
