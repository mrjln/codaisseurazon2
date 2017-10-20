#Create some products
Product.destroy_all

product_1 = Product.create!({
  name: "Kangaroo",
  description: "The kangaroo is a marsupial from the family Macropodidae
  (macropods, meaning 'large foot'). In common use the term is used to
   describe the largest species from this family, especially those of
   the genus Macropus: the red kangaroo, antilopine kangaroo, eastern
   grey kangaroo, and western grey kangaroo.[1] Kangaroos are endemic to
    Australia. The Australian government estimates that 34.3 million kangaroos
    lived within the commercial harvest areas of Australia in 2011, up from
     25.1 million one year earlier.",
  price: 56.50 })

product_2 = Product.create!({
name: "Elephant",
description: "Elephants are large mammals of the family Elephantidae and
the order Proboscidea. Three species are currently recognized: the African
bush elephant (Loxodonta africana), the African forest elephant (L. cyclotis),
 and the Asian elephant (Elephas maximus). Elephants are scattered throughout
  sub-Saharan Africa, South Asia, and Southeast Asia. Elephantidae is the only
   surviving family of the order Proboscidea; other, now extinct, ",
price: 23 })

product_3 = Product.create!({
name: "Giraffe",
description: "The giraffe (Giraffa) is a genus of African even-toed ungulate mammals, the tallest living terrestrial animals and the largest ruminants. The genus currently consists of one species, Giraffa camelopardalis, the type species. Seven other species are extinct, prehistoric species known from fossils. Taxonomic classifications of one to eight extant giraffe species have been described, based upon research into the mitochondrial and nuclear DNA, as well as morphological measurements of Giraffa, but the IUCN currently recognizes only one species with nine subspecies.",
price: 423 })

product_4 = Product.create!({
name: "Elf",
description: "An elf (plural: elves) is a type of human-shaped supernatural being in Germanic mythology and folklore. In medieval Germanic-speaking cultures, elves seem generally to have been thought of as beings with magical powers and supernatural beauty, ambivalent towards everyday people and capable of either helping or hindering them.[1] However, the details of these beliefs have varied considerably over time and space, and have flourished in both pre-Christian and Christian cultures.",
price: 5325 })
