require "spec_helper"

RSpec.describe Neo::Wallet do
  it "has a version number" do
    expect(Neo::Wallet::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
