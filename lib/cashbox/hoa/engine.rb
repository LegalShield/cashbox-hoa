module Cashbox
  module Hoa
    class Engine < ::Rails::Engine
      isolate_namespace Cashbox::Hoa
    end
  end
end
