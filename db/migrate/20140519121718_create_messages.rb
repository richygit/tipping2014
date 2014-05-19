class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :msg_body
      t.string :from
      t.timestamps
    end
  end
end
