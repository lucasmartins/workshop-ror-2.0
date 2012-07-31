class Selo < ActiveRecord::Base
  belongs_to :prioridade
  attr_accessible :nome, :prioridade_id, :preco, :imagem

  has_attached_file :imagem, :styles => { :medio => "300x300>", :pequeno => "100x100>" }

  validates :nome, :prioridade_id, :preco, :presence=>true
  validates :preco, :numericality=>true
end
