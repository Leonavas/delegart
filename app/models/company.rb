class Company < ActiveRecord::Base
  has_one :user, :as => :rolable
  attr_accessible :cnpj
end
