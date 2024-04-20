# frozen_string_literal: true

class BinaryTree
  def self.on(grid)
    grid.each cell do |cell|
      neighbors << cell.north if cell.north
      neighbors << cell.east if cell.east

      index = rand(neighbors.length)
      neighbor = neighbors[index]

      cell.link(neighbor) if neighbor
    end
    grid
  end
end
