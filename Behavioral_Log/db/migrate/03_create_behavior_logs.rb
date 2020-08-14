class CreateBehaviorLogs < ActiveRecord::Migration[5.2]
    def change 
        create_table :behavior_logs do |t|
            t.datetime :date 
            t.string :time 
            t.string :behavior       #should this be a string or text?
            t.string :incident_before_behavior
            t.integer :kid_id
            t.timestamps
        end 
    end 
end 

            
