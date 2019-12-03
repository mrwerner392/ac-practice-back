class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :content
      t.belongs_to :chat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
