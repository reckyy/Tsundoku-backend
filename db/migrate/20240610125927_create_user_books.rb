# frozen_string_literal: true

class CreateUserBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :user_books do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end

    add_index :user_books, %i[user_id book_id], unique: true
  end
end
