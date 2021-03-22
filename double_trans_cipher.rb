module DoubleTranspositionCipher
  def self.encrypt(document, key)
    # TODO: FILL THIS IN!
    ## Suggested steps for double transposition cipher
    # 1. find number of rows/cols such that matrix is almost square
    # 2. break plaintext into evenly sized blocks
    # 3. sort rows in predictibly random way using key as seed
    # 4. sort columns of each row in predictibly random way
    # 5. return joined cyphertext

    col_num_matrix = Math.sqrt(document.length).ceil
    matrix = document.chars
                .each_slice(col_num_matrix)
                .to_a
                .tap{ |i| i.last.fill(" ", i.last.length, number_of_matrix - i.last.length) }

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
    matrix.join
    
  end

  def self.decrypt(ciphertext, key)
    # TODO: FILL THIS IN!
  end
end
