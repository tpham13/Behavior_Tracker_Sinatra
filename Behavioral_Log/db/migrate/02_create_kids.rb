class CreateKids < ActiveRecord::Migration[5.2]
    def change
        create_table :kids do |t|
            t.string :name
            t.integer :age
            t.integer :user_id
            t.timestamps
        end 
    end 
end 