require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0
  result = nil
  while i < collection.length do
    if collection[i][:item] == name
      result = collection[i]
      #binding.pry
    # else
    #   result = nil 
    end
  i += 1
  end
  result
  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  result = []
  i = 0 
  while i < cart.length do 
    result.push(cart[i])
    
    if result[i][:count]
      result[i][:count] += 1
      
    else 
      result[i][:count] = 1
    end
  i += 1
  end
  # binding.pry
  result
end


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart_new = consolidate_cart(cart)
  
  i = 0 
  while i < coupons.length do
    
    item_i = cart_new[i][:item]
    j = 0 
    while j < cart_new.length do 
      if item_i == coupons[j][:item] && coupons[j][:count] > 0 
        cart_new[i][:count] -= 1 
        coupons[j][:count] -= 1 
        cart_new[i][:item] = "#{item} W/COUPON"
        cart_new[i][:count] += 1
        cart_new[i][:price] = coupons[j][:price]
      end
      
    j += 1 
    end 
    i += 1 
  end
  cart_new
  # binding.pry
end







def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  result = []
  while i < cart.length do
    result.push(cart[i])
    if result[i][:clearance] == true 
      result[i][:price] = (cart[i][:price] * 0.8).round(2)
      
    end
  i += 1 
  end
  result
end









def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  new_consolidated_cart = consolidate_cart(cart)
  cart_with_coupons_applied = apply_coupons(new_consolidated_cart)
  cart_ready_for_totaling = apply_clearance(cart_with_coupons_applied)
  total = 0 
  i = 1 
  while i < cart_ready_for_totaling.length do 
    
  end
  total
end
