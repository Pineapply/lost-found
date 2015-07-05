class AddPictureToItems < ActiveRecord::Migration
def self.up
   add_attachment :items, :picture
 end

 def self.down
   remove_attachment :items, :picture
 end
end
