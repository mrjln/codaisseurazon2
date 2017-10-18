#Create some products
Product.destroy_all
product_1 = Product.create!(
  name: "Kangaroo",
  description: " dsljgsadlkgjlsakdgjlksadgj",
  price: 56.50
)
product_2 = Product.create!(
name: "Elephant",
description: "sadglasjkdglasdjgl;sadkjgas",
price: 23
)
product_3 = Product.create!(
name: "Giraffe",
description: "sdgjasdkvjads;lkjv",
price: 423
)
product_4 = Product.create!(
name: "Elf",
description: "Ajdlsdjlsadjfasdgasg",
price: 5325
)
