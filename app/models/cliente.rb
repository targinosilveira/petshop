class Cliente < ActiveRecord::Base
  belongs_to :cidade
  belongs_to :estado
  belongs_to :user
end
