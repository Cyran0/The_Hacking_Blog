class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
    	t.text :comment
    	t.belongs_to :user, index: true
    	t.belongs_to :article, index: true

      t.timestamps
    end
  end
end
