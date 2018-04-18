require "spec_helper"

RSpec.describe Cashbox::Hoa do
  it "has a version number" do
    expect(Cashbox::Hoa::VERSION).not_to be nil
  end

  describe ".config" do
    it "allows setting the private_key, auth_id and javascript_path" do
      Cashbox::Hoa.config do |config|
        config.private_key = "sekret"
        config.auth_id = "secret"
        config.javascript_path = "vindicia.js"
      end

      expect(Cashbox::Hoa.private_key).to eq("sekret")
      expect(Cashbox::Hoa.auth_id).to eq("secret")
      expect(Cashbox::Hoa.javascript_path).to eq("vindicia.js")
    end

    it "it throws an error for a non configurable attribute" do
      expect {
        Cashbox::Hoa.config do |config|
          config.cannot_configure = "sekret"
        end
      }.to raise_error(NoMethodError)
    end
  end
end
