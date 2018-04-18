require 'spec_helper'

RSpec.describe 'Cashbox::Hoa::Web' do

  def app
    Cashbox::Hoa::Web.new
  end

  describe 'requesting a valid credit card form' do
    before do
      get '/credit_cards/new', address: {
        line_one: '123 Main',
        line_two: 'Apt 1'
      }
    end

    it 'returns a 200' do
      expect(last_response).to be_ok
    end

    it 'returns the credit card form' do
      expect(last_response.body).to include('<form id="cashbox_credit_card">')
      expect(last_response.body).to include('</form>')
    end

    it 'contains a hidden field with line one of the address ' do
      expect(last_response.body).to include('<input type="hidden" id="vin_billing_address_line1" name="vin_billing_address_line1" value="123 Main">')
    end

    it 'contains a hidden field with line two of the address ' do
      expect(last_response.body).to include('<input type="hidden" id="vin_billing_address_line2" name="vin_billing_address_line2" value="Apt 1">')
    end
  end
end
