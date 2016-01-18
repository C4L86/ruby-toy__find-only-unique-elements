# This method takes an array of elements (these might be strings, integers, floats, or a
# combination of the above), and returns an array of the elements that appear once and only
# once.
def find_unique_elements(arr)
    collect = Hash.new 0
    
    arr.each do |elt|
        collect[elt] += 1
    end

    unique_hash = Hash(collect.select {|k,v| v == 1})
    
    unique_hash.keys
end
