class Matrix

  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = self.get_rows(matrix)
    @columns = self.get_columns(matrix)
  end

  def get_rows(matrix)
    rows = matrix.split("\n").map!{|str_row| str_row.split(" ")}
    for row in rows do
      row.map!{|str| str.to_i}
    end
    rows
  end

  def get_columns(matrix)
    rows = @rows
    columns = []
    for each in 1..rows[0].length do
      index = 0
      column = []
      for row in rows do
        column << row[index]
      end
      columns << column
      index += 1
    end
    columns
  end

end