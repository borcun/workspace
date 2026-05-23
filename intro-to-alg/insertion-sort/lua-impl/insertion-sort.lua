#!/opt/homebrew/bin/lua

function ascending(x, y)
   return x > y
end

function descending(x, y)
   return x < y
end

function sort(arr, cmp)
   for i = 2, #arr do
      key = arr[i]
      j = i - 1

      while j >= 1 and cmp(arr[j], key) do
	 arr[j + 1] = arr[j]
	 j = j - 1
      end

      arr[j + 1] = key
      
   end
end

arr = {7, 5, 2, 4, 1, 6, 3, 5}

local printable = table.concat(arr, ", ")
print("unsorted array    : " .. printable)

sort(arr, ascending)
printable = table.concat(arr, ", ")
print("asc. sorted array : " .. printable)

sort(arr, descending)
printable = table.concat(arr, ", ")
print("dec. sorted array : " .. printable)
