require 'rails_helper'

RSpec.describe Constituent, type: :model do
  describe "creating a factory"
  let!(:constituent) { FactoryBot.create(:constituent, email: "shaun@carland.com") }

  it "creates a consitituent from the factory" do
    expect(constituent.email).to eq("shaun@carland.com")
  end
end
