class Entrega < ActiveRecord::Base
  belongs_to :selo
  attr_accessible :conteudo, :destinatario, :entrege, :remetente
end
