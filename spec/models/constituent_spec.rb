require 'rails_helper'

RSpec.describe Constituent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  let(:constituent) { FactoryBot.create(:constituent, email: "shaun@carland.com", password: "password") }

  it "creates a consitituent from the factory" do
    binding.pry
  end
end
