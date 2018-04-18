require 'active_support/dependencies/autoload'

module Cashbox
  module Hoa
    extend ActiveSupport::Autoload

    class << self
      attr_accessor :private_key, :auth_id, :javascript_path

      def config(&block)
        block.call(self)
      end
    end

    eager_autoload do
      autoload :VERSION
      autoload :Web
    end
  end
end
