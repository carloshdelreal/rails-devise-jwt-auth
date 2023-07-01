# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

unless Rails.env.production?
  connection = ActiveRecord::Base.connection
  # connection.tables.each do |table|
  #   connection.execute("TRUNCATE #{table}") unless table == "schema_migrations"
  # end

  # sql = File.read('create_star_wars.sql')
  sql = File.read('db/populate_star_wars.sql')
  statements = sql.split(/;$/)
  statements.pop

  ActiveRecord::Base.transaction do
    statements.each do |statement|
      connection.execute(statement)
    end
  end
end
