class CreateRequests < ActiveRecord::Migration
  def change
    create_table :rquests, {id: false, force: true} do |t|
      t.integer :request_id
      t.integer :user_id, null: false
      t.string :text, null: false
      t.integer :status, default: Request::PENDING_STATUS, null: false

      t.timestamps null: false
    end

    add_index :users, :email, :unique => true
  end
end
