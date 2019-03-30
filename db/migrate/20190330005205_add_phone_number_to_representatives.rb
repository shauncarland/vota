class AddPhoneNumberToRepresentatives < ActiveRecord::Migration[5.2]
  def change
    add_column :representatives, :phone_number, :string
  end
end
