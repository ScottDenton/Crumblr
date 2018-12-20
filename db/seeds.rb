# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

post1 = Post.new{title: "Brownies", kind: 'text'}
post1.content = <<CONTENT
Preheat oven to 350 degrees F (175 degrees C). Grease and flour an 8-inch square pan.

In a large saucepan, melt 1/2 cup butter. Remove from heat, and stir in sugar, eggs, and 1 teaspoon vanilla. Beat in 1/3 cup cocoa, 1/2 cup flour, salt, and baking powder. Spread batter into prepared pan.

Bake in preheated oven for 25 to 30 minutes. Do not overcook.

To Make Frosting: Combine 3 tablespoons softened butter, 3 tablespoons cocoa, honey, 1 teaspoon vanilla extract, and 1 cup confectioners' sugar. Stir until smooth. Frost brownies while they are still warm.
CONTENT
post1.save
3.times do {post1.hearts.create}

post2 = Post.new(title: "Brownie pic", kind: "image")
post2.content = "brownie.jpeg"
post2.save
post2.hearts.create
