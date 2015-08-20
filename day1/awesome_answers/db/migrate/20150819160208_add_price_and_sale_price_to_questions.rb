class AddPriceAndSalePriceToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :price, :numeric
    add_column :questions, :sale_price, :numeric
    
  end
end
