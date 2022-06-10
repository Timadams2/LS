def transpose(old_matrix)
  new_matrix = []

  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| old_matrix[row_index][column_index] }
    new_matrix << new_row
  end
  new_matrix
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]