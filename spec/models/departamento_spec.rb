require 'rails_helper'

RSpec.describe Departamento, type: :model do
  context "Testing factory" do
  it { expect(build(:departamento)).to be_valid }
  end

  context "Validating name" do
    it "should be invalid if nil" do
      expect(build(:departamento, nome:nil)).to be_invalid
    end
    it "should be invalid if repetead" do
      create(:departamento, nome: "CIC")
      expect(build(:departamento, nome: "CIC")).to be_invalid
    end
  end
end
