require "pry-byebug"


set = [17,3,6,9,15,8,6,1,10]




def stock_picker(array)
  new_array = Array.new(array.length()) { Hash.new}

  array.each_with_index.map do |element, index|
    index.upto((array.length() -2)) do |num|
      if (array[num + 1]) == nil
        break
      end
      new_element = array[num + 1] - element
      new_array[index].merge!({new_element => [index,(num + 1) ]})
    end
  end

  final_hash = Hash.new() 

  new_array.each_with_index.map do |element, index|
    element.map do |key, value|
      if key == element.keys.max
        final_hash[key] = value
      end
    end
  end

  final_hash.map do |key, value|
    if key == final_hash.keys.max
      return value
    end
  end

end


p stock_picker(set)