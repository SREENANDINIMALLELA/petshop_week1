def pet_shop_name(pet_shop)
  return pet_shop [:name]
end
#----------------------------

def total_cash(pet_shop)
  return pet_shop [:admin][:total_cash]
end
#-------------------------


def add_or_remove_cash(pet_shop,addCash)
     pet_shop [:admin][:total_cash] += addCash
  return
end
def total_cash(pet_shop)
   return pet_shop [:admin][:total_cash]
end
#----------------------------

def add_or_remove_cash__remove(pet_shop,dedect_ammount)
  pet_shop [:admin][:total_cash] -= addCash
  return
end
def total_cash(pet_shop)
   return pet_shop [:admin][:total_cash]
end
#----------------------------

def pets_sold(pet_shop)
return pet_shop [:admin][:pets_sold]
end

#---------------------------

def increase_pets_sold(pet_shop,sold)
    pet_shop [:admin][:pets_sold] += sold
  return
end

#------------------

def stock_count(pet_shop)
  stock = 0
pets =  pet_shop [:pets]
for pet in pets
  if (pet[:pet_type] != 0)
    stock += 1
  end
end
  return stock
end
#-------------------------
def pets_by_breed(pet_shop , breed)
  same_breed_array = []
pets =  pet_shop [:pets]
for pet in pets
  if (pet[:breed] == breed)
  same_breed_array.push(pet [:name])
  end
end
  return same_breed_array
end

#---------------------------------
def find_pet_by_name(pet_shop , find_pet_name)
  pets =  pet_shop [:pets]
  found_pet = nil
  for pet in pets
    if (pet[:name] == find_pet_name)
    found_pet = pet
    end
  end
  return found_pet
end
#-------------------------------
def remove_pet_by_name(pet_shop, pet_name)
  pets =  pet_shop [:pets]

  for pet in pets
    if (pet[:name] == pet_name)
    pets.delete(pet)
    end
  end
end
#------------------------------
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop [:pets].push(new_pet)
  return
end

#------------------------------

def customer_cash(customers)

return  customers[:cash]
end
#------------------------------
def remove_customer_cash(customers , cash )
  return customers[:cash] -= cash
end
#-------------------------------
def customer_pet_count(customers)
pet_count = customers[:pets].length()
  return pet_count
end
#--------------------------------
def add_pet_to_customer(customer, new_pet)
  customer [:pets].push(new_pet)
  return
end
#-------------------------------
def customer_can_afford_pet(customer, new_pet)
 customer [:cash] >= 100 ? true : false
end

#----------------------------------
def sell_pet_to_customer(pet_shop, pet, customer)
  if pet == nil
    return
  else
    if customer [:cash] >= pet[:price]
    customer_purchase =  customer[:pets].push(pet)
    pets = pet_shop [:pets]
    for pet1 in pets
      if pet1 == pet
        pet_shop [:pets].delete(pet)
        pet_shop [:admin][:pets_sold] += 1
        customer [:cash] -=  pet1 [:price]
        pet_shop [:admin][:total_cash] += pet1 [:price]
      end
    end 
    end
    return customer_purchase
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
