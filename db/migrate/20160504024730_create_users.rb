class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
    t.string  "username",        limit: 50,  null: false
    t.string  "password",        limit: 255, null: false
    t.string  "first_name",      limit: 30,  null: false
    t.string  "last_name",       limit: 30,  null: false
    t.string  "email",           limit: 255, null: false
    t.string  "city",         	 limit: 255, null: false
    t.string  "country",         limit: 255, null: false
    t.string  "address", 	 	     limit: 255, null: false
    t.string  "phone",           limit: 255, null: false
    t.integer "points",          limit: 4,default:"600",null: false
    t.boolean "request_status",  default: "0", null: false
    t.boolean "booking_status",  default: "0",null: false
    t.timestamps
    end
  end

  def down
  	drop_table :users 
  end

end
