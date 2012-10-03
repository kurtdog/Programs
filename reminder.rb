#File: ar_test .rb
require "active_record"
# Adapter for the SQLite3
ActiveRecord::Base::establish_connection(:adapter => "sqlite3",:database => "testdb.sqlite" )
# Define database schema , and create database " people "
class ReminderTableScript < ActiveRecord::Migration
	def self.up
		create_table:reminders do | t |
		t.string:event
		t.string:duedate
		t.string:completed
		end
	end
	
	def self.down
		drop_table :reminders
	end
end

#table to be used in ReminderTableScript.up
class Reminder < ActiveRecord::Base
end
