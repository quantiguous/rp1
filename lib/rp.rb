require "rp/engine"

module Rp
  mattr_accessor :generator_class
  
  def self.generator_class
    @@generator_class.constantize
  end
end
