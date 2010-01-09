# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100109111200) do

  create_table "animais", :force => true do |t|
    t.string   "nome"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cep"
    t.integer  "uf_id"
    t.integer  "cidade_id"
    t.string   "celular"
    t.string   "celular_secundario"
    t.string   "telefone_residencial"
    t.string   "telefone_trabalho"
    t.string   "outro_telefone"
    t.string   "email"
    t.string   "twitter"
    t.integer  "user_id"
    t.string   "rg"
    t.string   "cpf_cnpj"
  end

  add_index "clientes", ["user_id"], :name => "index_clientes_on_user_id"
  add_index "clientes", ["nome"], :name => "index_clientes_on_nome"

  create_table "produtos", :force => true do |t|
    t.string   "descricao"
    t.float    "preco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
