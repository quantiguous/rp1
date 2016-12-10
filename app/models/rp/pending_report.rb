module Rp
  class PendingReport < ActiveRecord::Base
    belongs_to :rp_report

  end
end
