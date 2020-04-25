# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
community_category = Category.where(name: 'Community').first_or_create(name: 'Community')
housing_category = Category.where(name: 'Housing').first_or_create(name: 'Housing')
redLight_category = Category.where(name: 'RedLight').first_or_create(name: 'RedLight')
guns_category = Category.where(name: 'Guns').first_or_create(name: 'Guns')
personals_category = Category.where(name: 'Personals').first_or_create(name: 'Personals')
services_categories= Category.where(name: 'Services').first_or_create(name: 'Services')

Subcategory.where(name: 'activities', category_id: community_category.id).first_or_create(name: 'activities', category_id: community_category.id)
Subcategory.where(name: 'classes', category_id: community_category.id).first_or_create(name: 'classes', category_id: community_category.id)
Subcategory.where(name: 'events', category_id: community_category.id).first_or_create(name: 'events', category_id: community_category.id )

Subcategory.where(name: 'Anal_lovers', category_id: redLight_category.id).first_or_create(name: 'Anal_lovers', category_id: redLight_category.id)
Subcategory.where(name: 'BBw', category_id: redLight_category.id).first_or_create(name: 'BBw', category_id: redLight_category.id)
Subcategory.where(name: 'Lesbians', category_id: redLight_category.id).first_or_create(name:'Lesbians', category_id:redLight_category.id)


Subcategory.where(name: 'Mk45', category_id: guns_category.id).first_or_create(name: 'Mk45', category_id: guns_category.id)
Subcategory.where(name: 'desert_eagles', category_id: guns_category.id).first_or_create(name: 'desert_eagles', category_id:guns_category.id)
Subcategory.where(name: 'ballers', category_id: guns_category.id).first_or_create(name: 'ballers', category_id: guns_category.id)


Subcategory.where(name: 'Male_Searching', category_id: personals_category.id).first_or_create(name: 'Male_Searching', category_id: personals_category.id)
Subcategory.where(name: 'Female_Searching', category_id: personals_category.id).first_or_create(name: 'Female_Searching', category_id: personals_category.id)



Subcategory.where(name: 'HouseHelps', category_id: services_categories.id).first_or_create(name: 'HouseHelpers', category_id: services_categories.id)
Subcategory.where(name: 'LawnMowers', category_id: services_categories.id).first_or_create(name: 'LawnMowers', category_id: services_categories.id)

