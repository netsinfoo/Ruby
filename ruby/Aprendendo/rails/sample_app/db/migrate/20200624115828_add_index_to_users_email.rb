# Adiciona ao banco um nivel de tratamento que, caso a validação de uniqueness do email
# passe o banco impede do registro duplo.
class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    add_index :users, :email, unique: true
  end
end
