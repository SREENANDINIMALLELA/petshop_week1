def pet_shop_name(petshop)
  return petshop [:name]
end
#=================================
def total_cash(petshop)
  return petshop [:admin][:total_cash]
end
#=================================
def add_or_remove_cash(petshop , add_or_remove_amount)
  petshop[:admin][:total_cash]+=add_or_remove_amount
end
#=================================
def pets_sold(petshop)
  return petshop[:admin][:pets_sold]
end
#=================================
def increase_pets_sold(petshop , petssold)
  return petshop[:admin][:pets_sold]+=petssold
end
#=================================
def stock_count(petshop)
  stock = 0
  pets = petshop[:pets]
  for pet in pets
    stock += 1
  end
  return stock
end
#=================================
def pets_by_breed(petshop , pet_Breed)
  pets_of_same_breed = []
pets = petshop[:pets]
  for pet in pets
    if pet[:breed] == pet_Breed
  pets_of_same_breed.push(pet_Breed)
  end
end
p pets_of_same_breed
end
#=================================
def find_pet_by_name(petshop , pet_name )
pets = petshop[:pets]
by_name_pet = nil
for pet in pets
  if pet[:name] == pet_name
   by_name_pet= pet
 end
end
return by_name_pet
end
#=================================
def remove_pet_by_name(petshop , pet_name )
  pets = petshop[:pets]
  for pet in pets
    if pet[:name] == pet_name
     pets.delete(pet)
   end
  end
  end
#=================================
def add_pet_to_stock(petshop , new_pet)
petshop[:pets].push(new_pet)
end
#=================================
def customer_cash(customers)
  return customers[:cash]
end
#=================================
def remove_customer_cash(customers , remove_cash)
  return customers[:cash] -= remove_cash
end
#=================================
def customer_pet_count(customers)
  customer_pets = customers[:pets].length()
return customer_pets
end
#=================================
def add_pet_to_customer(customers, new_pet)
  add_pet = customers[:pets].push(new_pet)
 customers
end
#=================================
def customer_can_afford_pet(customers, new_pet)
customer_cash = customers[:cash]
new_pet_price = new_pet[:price ]
if (customer_cash >= new_pet_price)
  return true
else
  return false
end
end
#=================================
# def sell_pet_to_customer(petshop , pet ,customer )
#   if (pet ==  nil)
#     return
#   else
#     if(pet[:price ] <= customer[:cash])
# customer [:pets].push (pet)
# petshop [:admin][:pets_sold]+= 1
# customer[:cash] -= pet[:price]
# petshop [:admin][:total_cash] +=  pet[:price]
# end
# end
# end
#=================================
def sell_pet_to_customer(petshop , pet ,customer )
  if pet != nil&&customer_can_afford_pet(customer ,pet )
    add_pet_to_customer(customer ,pet)
    increase_pets_sold(petshop , 1)
    stock_count(petshop)
    remove_customer_cash(customer,pet[:price])
     add_or_remove_cash(petshop ,pet[:price])
end
end



# def total_cash(pet_shop)
#   total_money = 0
# pets = pet_shop [:pets]
# for pet in pets
# total_money += pet [:price]
# end
# return total_money
# end
