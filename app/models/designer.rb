class Designer < ActiveRecord::Base
  has_one :user, :as => :rolable
  attr_accessible :cpf
end
