class CreateNotepads < ActiveRecord::Migration
  def change
    create_table :notepads do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
