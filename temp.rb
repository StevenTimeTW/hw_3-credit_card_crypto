


require 'matrix'

document = "adadssddefe"
key = 5

# Build the matrix close to square matrix
number_of_matrix = Math.sqrt(document.length).ceil
matrix = document.chars
            .each_slice(number_of_matrix)
            .to_a
            .tap{ |i| i.last.fill(nil, i.last.length, number_of_matrix - i.last.length) }

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
a = Array.new(4){ rand(0..number_of_matrix-1)}
puts a
matrix = row_swap(matrix,2,1)
matrix = col_swap(matrix,0,1)

print matrix
puts "",matrix.join
