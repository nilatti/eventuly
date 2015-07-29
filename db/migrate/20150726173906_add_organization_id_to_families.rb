class AddOrganizationIdToFamilies < ActiveRecord::Migration
  def change
    add_column :families, :organization_id, :integer, :null => false

  end
end
