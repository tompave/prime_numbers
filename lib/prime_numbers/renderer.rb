module PrimeNumbers
  class Renderer

    attr_reader :table, :primes, :size

    def initialize(table)
      @table = table
      @primes = table.primes
      @size = table.size
    end


    def render
      buffer = []
      buffer << render_header
      buffer << render_separator

      size.times do |row|
        buffer << render_row(row)
      end

      buffer.join("\n")
    end


    private


    def render_header
      buffer = format(" ", gutter_width)

      buffer << table.columns.map do |column|
        format(column.header, column.width)
      end.join
    end


    def render_separator
      buffer = "-" * (gutter_width + 2) + "+"

      buffer << table.columns.map do |column|
        "-" * (column.width + 2) + "+"
      end.join
    end


    def render_row(row)
      buffer = format(primes[row], gutter_width)

      table.columns.each do |column|
        value = column[row].value
        buffer << format(value, column.width)
      end

      buffer
    end


    def format(value, column_width)
      width = column_width + 1
      "%#{width}s |" % value
    end


    def gutter_width
      @gutter_width ||= table.primes.last.to_s.length
    end

  end
end
