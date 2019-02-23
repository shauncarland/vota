class AddMoreColumnsToConstituent < ActiveRecord::Migration[5.2]
  def change
    add_column :constituents, :first_name, :string
    add_column :constituents, :last_name, :string
    add_column :constituents, :email_alerts, :boolean, default: false
    add_column :constituents, :text_alerts, :boolean, defaut: false
  end
end
