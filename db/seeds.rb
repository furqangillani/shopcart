50.times do |index|
  puts "Category created"
  category =  Category.create(name:  Randgen.first_name)
  20.times do |index2|
    puts "Sub-Category created"
    sub_category = category.sub_categories.create(name: Randgen.first_name)
    10.times do |index3|
      puts "Product created"
      product = sub_category.products.create(name: Randgen.first_name, description: "HHHHHhhhhh")
      3.times do |index3|
        puts "Variant created"
        product.variants.create(size: Randgen.first_name, price: "123456")
      end
    end
  end
end

