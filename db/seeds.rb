# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{:category_name => "お知らせ"}, {:category_name => "診療"}, {:category_name => "トリミング"}, {:category_name => "デイリー"}, {:category_name => "未分類"}])