class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :birthdate, :datetime
    add_column :users, :about, :text
    add_column :users, :twitter_url, :string
    add_column :users, :facebook_url, :string
    add_column :users, :youtube_url, :string
    add_column :users, :location, :string
    add_column :users, :creator, :boolean
    add_column :users, :billing_street_address_1, :string
    add_column :users, :billing_street_address_2, :string
    add_column :users, :billing_city, :string
    add_column :users, :billing_state, :string
    add_column :users, :billing_postal_code, :string
    add_column :users, :billing_country, :string
    add_column :users, :mailing_street_address_1, :string
    add_column :users, :mailing_street_address_2, :string
    add_column :users, :mailing_city, :string
    add_column :users, :mailing_state, :string
    add_column :users, :mailing_postal_code, :string
    add_column :users, :mailing_country, :string
  end
end
