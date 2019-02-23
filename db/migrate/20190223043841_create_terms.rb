class CreateTerms < ActiveRecord::Migration[5.2]
  def change
    create_table :terms do |t|
      t.belongs_to :represenative, index: true, foreign_key: true
      t.belongs_to :district, index: true, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
