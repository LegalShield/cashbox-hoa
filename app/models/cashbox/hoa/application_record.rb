module Cashbox
  module Hoa
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
