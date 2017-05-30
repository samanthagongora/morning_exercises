class SwiftStats
  def strip_text(file)
    unstripped = File.open(file, 'r')
    stripped = File.new('stripped.txt', 'w')

    unstripped.each do |line|
      line = line.delete('?!:;,[]{}~`!@$%^&*()#+="|\/<>.')
      line = line.delete('a')
      line = line.delete('an')
      line = line.delete('the')
      stripped << line
    end

  end
end

swift_stats = SwiftStats.new
swift_stats.strip_text('lyrics.txt')
