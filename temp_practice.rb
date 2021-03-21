

document = "aabbcdef"
key = 25
encrypted_SubstitutionCipher_document = document
                      .chars
                      .map { |i| (i.ord + key).chr }
                      .join
puts encrypted_SubstitutionCipher_document

decrpted_SubstitutionCipher_document = encrypted_SubstitutionCipher_document
                      .chars
                      .map { |i| (i.ord - key).chr }
                      .join
puts decrpted_SubstitutionCipher_document



look_up_table = (0..127).to_a.shuffle(random: Random.new(key))

encrypted_PermutationCipher_document = document
                      .chars
                      .map { |i| i = look_up_table[i.ord].chr}
                      .join
puts encrypted_PermutationCipher_document

decrpted_PermutationCipher_document = encrypted_PermutationCipher_document
                      .chars
                      .map { |i| i = look_up_table.index(i.ord).chr}
                      .join
puts decrpted_PermutationCipher_document
