# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120731070302) do

  create_table "central_correios", :force => true do |t|
    t.string   "nome"
    t.integer  "capacidade"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entregas", :force => true do |t|
    t.string   "remetente"
    t.string   "destinatario"
    t.text     "conteudo"
    t.integer  "selo_id"
    t.boolean  "entrege"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "entregas", ["selo_id"], :name => "index_entregas_on_selo_id"

  create_table "prioridades", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "selos", :force => true do |t|
    t.string   "nome"
    t.integer  "prioridade_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.float    "preco"
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
  end

  add_index "selos", ["prioridade_id"], :name => "index_selos_on_prioridade_id"

end
