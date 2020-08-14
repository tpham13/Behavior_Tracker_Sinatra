class CreateUsers < ActiveRecord::Migration[5.2]
    def change
      create_table :users do |t|
        t.string :name    #use string or text?
        t.string :email
        t.integer :kid_id
        t.integer :behaviorlog_id
        t.timestamps
      end
    end
end