class CreateConstituentDistrictMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :constituent_district_memberships do |t|
      t.belongs_to :constituent, index: true, foreign_key: true
      t.belongs_to :district, index: true, foreign_key: true
      t.timestamps
    end
  end
end
