class AddMoreColumnsToRepresenative < ActiveRecord::Migration[5.2]
  def change
    add_column :represenatives, :first_name, :string
    add_column :represenatives, :last_name, :string
  end
end
