class CreateBehaviorlogs < < ActiveRecord::Migration[5.2]
    def change 
        create_table :behavior_logs do |t|
            t.datetime :date 
            t.timestamps :time 
            t.text :behavior
            t.integer :kid_id
            
