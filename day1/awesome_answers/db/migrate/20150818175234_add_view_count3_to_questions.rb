class AddViewCount3ToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :view_count3, :string
  end
end
