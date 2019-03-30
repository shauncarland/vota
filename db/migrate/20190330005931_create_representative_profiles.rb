class CreateRepresentativeProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :representative_profiles do |t|
      t.string :priorities
      t.string :motivations
      t.belongs_to :representative, foreign_key: true

      t.timestamps
    end
  end
end
