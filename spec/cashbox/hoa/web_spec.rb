require "spec_helper"

RSpec.describe "Cashbox::Hoa::Web" do

  def app
    Cashbox::Hoa::Web.new
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
