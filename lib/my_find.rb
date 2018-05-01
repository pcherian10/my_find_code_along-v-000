require 'pry'

def my_find(collection)
  i = 0
  while (i < collection.length)
    if yield(collection[i])
      return collection
    i += 1
  end
end

my_find(collection) {|i| 1 % 3 == 0 && 1 % 5 == 0}