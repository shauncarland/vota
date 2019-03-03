class DropRepresenativesTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :represenatives
  end
end
