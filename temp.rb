


require 'matrix'

document = "adadssddefe"
key = 5

# Build the matrix close to square matrix
number_of_matrix = Math.sqrt(document.length).ceil
matrix = document.chars
            .each_slice(number_of_matrix)
            .to_a
            .tap{ |i| i.last.fill(" ", i.last.length, number_of_matrix - i.last.length) }

# Print the original matrix
print matrix
puts "",matrix.join

def row_swap(matrix,i,j)
  matrix[i], matrix[j] = matrix[j], matrix[i]
  matrix
end

def col_swap(matrix,i,j)
  matrix.each { |row| row[i], row[j] = row[j], row[i]}
end

Kernel.srand(key)
row_swap_key = Array.new(2){ rand(0..matrix.length-1)}
Kernel.srand(key)
col_swap_key = Array.new(2){ rand(0..matrix[0].length-1)}
matrix = row_swap(matrix,row_swap_key[0],row_swap_key[1])
matrix = col_swap(matrix,col_swap_key[0],col_swap_key[1])

print matrix
puts "",matrix.join
