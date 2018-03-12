require 'rails_helper'

RSpec.describe Margin, type: :model do
  it "rejects empty field for the value of sixteenft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: nil)
    expect(margin).not_to be_valid
  end

  it "validate 0.5 of sixteenft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.5)
    expect(margin).to be_valid
  end

  it "rejects -0.3 for the value of sixteenft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: -0.3)
    expect(margin).not_to be_valid
  end

  it "rejects 0.0004 for the value of sixteenft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.0004)
    expect(margin).not_to be_valid
  end

  it "rejects empty field for the value of combo_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: nil)
    expect(margin).not_to be_valid
  end

  it "validate 0.5 of combo_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.5)
    expect(margin).to be_valid
  end

  it "rejects -0.3 for the value of combo_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: -0.3)
    expect(margin).not_to be_valid
  end

  it "rejects 0.0004 for the value of combo_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.0004)
    expect(margin).not_to be_valid
  end

  it "rejects empty field for the value of TL_cost" do
    margin = FactoryBot.build(:margin, ninetysixft_container: nil)
    expect(margin).not_to be_valid
  end

  it "validate 0.5 of TL_cost" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.5)
    expect(margin).to be_valid
  end

  it "rejects -0.3 for the value of TL_cost" do
    margin = FactoryBot.build(:margin, ninetysixft_container: -0.3)
    expect(margin).not_to be_valid
  end

  it "rejects 0.0004 for the value of TL_cost" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.0004)
    expect(margin).not_to be_valid
  end

  it "rejects empty field for the value of :thirtytwoft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: nil)
    expect(margin).not_to be_valid
  end

  it "rejects -0.3 for the value of :thirtytwoft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: -0.3)
    expect(margin).not_to be_valid
  end

  it "rejects 0.0004 for the value of :thirtytwoft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.0004)
    expect(margin).not_to be_valid
  end

  it "rejects empty field for the value of :sixtyfourft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: nil)
    expect(margin).not_to be_valid
  end

  it "validate 0.5 of :sixtyfourft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.5)
    expect(margin).to be_valid
  end

  it "rejects -0.3 for the value of :sixtyfourft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: -0.3)
    expect(margin).not_to be_valid
  end

  it "rejects 0.0004 for the value of :sixtyfourft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.0004)
    expect(margin).not_to be_valid
  end

  it "rejects empty field for the value of :eightyft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: nil)
    expect(margin).not_to be_valid
  end

  it "validate 0.5 of :eightyft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.5)
    expect(margin).to be_valid
  end

  it "rejects -0.3 for the value of :eightyft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: -0.3)
    expect(margin).not_to be_valid
  end

  it "rejects 0.0004 for the value of :eightyft_container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.0004)
    expect(margin).not_to be_valid
  end

  it "rejects empty field for the value of ninetysixft container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: nil)
    expect(margin).not_to be_valid
  end

  it "validate 0.5 of ninetysixft container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.5)
    expect(margin).to be_valid
  end

  it "rejects -0.3 for the value of ninetysixft container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: -0.3)
    expect(margin).not_to be_valid
  end

  it "rejects 0.0004 for the value of ninetysixft container" do
    margin = FactoryBot.build(:margin, ninetysixft_container: 0.0004)
    expect(margin).not_to be_valid
  end

  it "validates the creation of a new line_item freight cost" do
    freight_cost = FactoryBot.create(:margin, line_item:'freight_cost')
    expect(freight_cost).to be_valid
  end

  it "rejects multiple of the same line_item" do
    freight_cost = FactoryBot.create(:margin, line_item:'freight_cost')
    expect(freight_cost).to be_valid
    duplicate = FactoryBot.build(:margin, line_item:'freight_cost')
    expect(duplicate).not_to be_valid
  end

  it "validates the creation a new line_item with unique name - origin_container_delivery_fee" do
    freight_cost = FactoryBot.create(:margin, line_item:'freight_cost')
    expect(freight_cost).to be_valid
    unique_line_item = FactoryBot.build(:margin, line_item:'origin_container_delivery_fee')
    expect(unique_line_item).to be_valid
  end
end

# - Create a third `Margin` with a `line_item` of “tea”
# - expect that it is *valid*
