require "sinatra"

module Cashbox
  module Hoa
    class Web < ::Sinatra::Base
      get "/payment_methods/:payment_method_type/new" do
        erb :"#{params['payment_method_type']}", layout: :default_layout
      end
    end
  end
end
