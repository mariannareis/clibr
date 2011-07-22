class CreateParagrafos < ActiveRecord::Migration
  def self.up
    create_table :paragrafos do |t|
      t.string :categoria
      t.string :conteudo

      t.timestamps
    end
  end

  def self.down
    drop_table :paragrafos
  end
end
