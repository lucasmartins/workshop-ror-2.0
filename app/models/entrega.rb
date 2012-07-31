class Entrega < ActiveRecord::Base
  belongs_to :selo
  attr_accessible :conteudo, :destinatario, :entregue, :remetente, :selo_id

  validates :destinatario, :remetente, :selo, :presence => true
end
