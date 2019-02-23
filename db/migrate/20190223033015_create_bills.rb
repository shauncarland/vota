class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.string :title
      t.string :bill_url
      t.string :summary
      t.belongs_to :represenative, index: true, foreign_key: true
      t.timestamps
    end
  end
end
