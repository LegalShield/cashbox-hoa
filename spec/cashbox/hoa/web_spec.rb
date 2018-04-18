require "spec_helper"

RSpec.describe "Cashbox::Hoa::Web" do
  def app
    Cashbox::Hoa::Web.new
  end

  before do
    Cashbox::Hoa.config do |c|
      c.private_key = "key"
      c.auth_id = "auth"
      c.javascript_path = "vindicia.js"
    end
  end

  describe "the default layout" do
    it "adds a script tag for the vindicia js" do
      get "/payment_methods/credit_card/new"

      expect(last_response.body).to include("<script src='vindicia.js'></script>")
    end

    it "shows a message when the js path is not configured" do
      Cashbox::Hoa.javascript_path = nil

      get "/payment_methods/credit_card/new"

      expect(last_response.body).to include("Please configure the path for the Vindicia hoa javascript")
    end
  end

  describe "requesting a valid credit card form" do
    before do
      get "/payment_methods/credit_card/new"
    end

    it "returns a 200" do
      expect(last_response).to be_ok
    end

    it "returns the credit card form" do
      expect(last_response.body).to include("<form>")
      expect(last_response.body).to include("</form>")
      expect(last_response.body).to include("credit card form")
    end
  end
end
