class Matrix

  attr_reader :rows, :columns

  def initialize(matrix)
    @rows = get_rows(matrix)
    @columns = get_columns(matrix)
  end

  private

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
    for index in rows[0].each_index do
      column = []
      for row in rows do
        column << row[index]
      end
      columns << column
    end
    columns
  end

end
