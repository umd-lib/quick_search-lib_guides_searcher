module QuickSearch
  module LibGuidesSearcher
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
