#class CreateProducts < ActiveRecord::Migration[6.0]
 # def change
  #  create_table :products do |t|
   #   t.string :title ,#limit:40
    #  t.integer :price
     # t.string :description

      #t.timestamps
    #end
  #end
#end
# -----------------------------------------
#--	limit 
# => Sets the maximum size of the string/text/binary/integer fields.

#--	precision 
# => Defines the precision for the decimal fields, representing the total number of digits in the number.

#-- scale 
# => Defines the scale for the decimal fields, representing the number of digits after the decimal point.

#-- polymorphic 
# => Adds a type column for belongs_to associations.

#-- null 
# => Allows or disallows NULL values in the column.

#-- default 
# => Allows to set a default value on the column.

#-- index 
# => Adds an index for the column.