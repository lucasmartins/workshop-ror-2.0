class AddImagemToSelo < ActiveRecord::Migration

  def self.up
    add_attachment :selos, :imagem
  end

  def self.down
    remove_attachment :selos, :imagem
  end

end
