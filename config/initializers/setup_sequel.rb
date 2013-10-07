DB = Sequel::Model.db = Sequel.connect "sqlite://db/#{Rails.env}.sqlite3"
