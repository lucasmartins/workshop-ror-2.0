class Selo < ActiveRecord::Base
  belongs_to :prioridade
  attr_accessible :nome, :prioridade_id

  validates :nome, :prioridade_id, :presence=>true
end
