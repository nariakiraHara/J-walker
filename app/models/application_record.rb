class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  include JpPrefecture
  jp_prefecture :prefecture_code
end
