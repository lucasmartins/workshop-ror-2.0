class Selo < ActiveRecord::Base
  belongs_to :prioridade
  attr_accessible :nome
end
