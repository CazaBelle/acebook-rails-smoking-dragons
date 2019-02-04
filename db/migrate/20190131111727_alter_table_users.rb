# frozen_string_literal: true

class AlterTableUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :password_digest, :string
  end
end
