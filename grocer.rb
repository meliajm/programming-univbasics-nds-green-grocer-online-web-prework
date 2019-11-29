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
  result
end


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart_new = [consolidate_cart(cart)[0]]
  i = 0 
  while do
    
    i += 1 
  end
  
  binding.pry
  
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
end
