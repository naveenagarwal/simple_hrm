class AddPolymorphicAssocaitionToAddress < ActiveRecord::Migration
  def change
    add_reference :addresses, :addressable, polymorphic: true, index: true
  end
end
