require 'rails_helper'

RSpec.describe Localizacao, type: :model do
  context "Testing factory" do
    it "should create localizacao" do
      create(:departamento, id:1)
      expect(build(:localizacao, departamento_id:1)).to be_valid
    end
  end

  context "Validating departamento" do
    it " should be invalid if nil" do
      expect(build(:localizacao, departamento: nil)).to be_invalid
    end

    it " should be invalid if doesn't exist" do
      expect(build(:localizacao, departamento_id: -1)).to be_invalid
    end
  end
end
