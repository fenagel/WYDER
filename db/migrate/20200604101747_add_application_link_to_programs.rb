class AddApplicationLinkToPrograms < ActiveRecord::Migration[6.0]
  def change
    add_column :programs, :application_link, :string
  end
end
