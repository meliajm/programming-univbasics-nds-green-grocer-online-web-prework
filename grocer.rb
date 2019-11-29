require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0
  while i < collection.length do
    if collection[i][:item] == name
      return collection[i]
    end
  i += 1
  end
end

# def consolidate_cart(cart)
#   # Consult README for inputs and outputs
#   #
#   # REMEMBER: This returns a new Array that represents the cart. Don't merely
#   # change `cart` (i.e. mutate) it. It's easier to return a new thing.
#   result = []
#   i = 0 
#   while i < cart.length do 
#     result.push(cart[i])
    
#     if result[i][:count]
#       result[i][:count] += 1
      
#     else 
#       result[i][:count] = 1
#     end
#   i += 1
#   end
#   # binding.pry
#   result
# end

def consolidate_cart(cart)
  result = []
  i = 0 
  while i < cart.length do 
    new_cart_item = find_item_by_name_in_collection(cart[i][:item], result)
    if new_cart_item != nil
      new_cart_item[:count] += 1 
    else 
      new_cart_item = {
        item: cart[i][:item],
        price: cart[i][:price],
        clearance: cart[i][:clearance],
        count: 1
      }
      result << new_cart_item
    end
    i += 1
  end
  result
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
  
  
  i = 0 
  while i < coupons.length do
    cart_item = find_item_by_name_in_collection(coupons[i][:item], cart)
    coupon_item_name = "#{coupons[i][:item]} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(coupon_item_name, cart)
    if cart_item && cart_item[:count] >= coupons[i][:num]
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += coupons[i][:num]
        cart_item[:count] -= coupons[i][:num]
      else
        cart_item_with_coupon = {
          item: coupon_item_name,
          price: coupons[i][:cost] / coupons[i][:num],
          count: coupons[i][:num],
          clearance: cart_item[:clearance]
        }
        cart << cart_item_with_coupon
        cart_item[:count] -= coupons[i][:num]
      end
    end
    i += 1 
  end 
  cart
end

  # cart_new = consolidate_cart(cart) 
    # item_i = cart_new[i][:item]
  #   j = 0 
  #   while j < cart_new.length do 
  #     # binding.pry
  #     if item_i == coupons[j][:item] && coupons[j][:num] > 0 
  #       # binding.pry
  #       cart_new[i][:price] = coupons[j][:price] / coupons[j][:num]
        
  #       cart_new[i][:count] -= 1 
  #       coupons[j][:num] -= 1 
  #       cart_new[i][:item] = "#{item_i} W/COUPON"
  #       cart_new[i][:count] += 1
        
  #     end
      
  #   j += 1 
  #   end 
  #   i += 1 
  # end
  # cart_new
  







def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  # result = []
  while i < cart.length do
    # result.push(cart[i])
    if cart[i][:clearance]
      cart[i][:price] = (cart[i][:price] * 0.8).round(2)
      
    end
    i += 1 
  end
  # result
  cart
end









def checkout(cart, coupons)
  consolidate_cart
end
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
#   new_consolidated_cart = consolidate_cart(cart)
#   cart_with_coupons_applied = apply_coupons(new_consolidated_cart, coupons)
#   cart_ready_for_totaling = apply_clearance(cart_with_coupons_applied)
#   total = 0 
#   i = 1 
#   while i < cart_ready_for_totaling.length do 
#     total += cart_ready_for_totaling[i][:price] * cart_ready_for_totaling[i][:count]
#   i += 1
#   end
#   if total > 100
#     total = (total * 0.9)
#   end
#   total
# end
