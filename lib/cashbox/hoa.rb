require 'active_support/dependencies/autoload'

module Cashbox
  module Hoa
    extend ActiveSupport::Autoload

    eager_autoload do
      autoload :VERSION
      autoload :Web
    end

    # Your code goes here...
  end
end
