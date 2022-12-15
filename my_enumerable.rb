module MyEnumerable
  def all?
    @list.each { |e| return false unless yield(e) }
    true
  end

  def any?
    @list.each do |e|
      return true if yield(e)
    end
    false
  end

  def filter
    result = []

    @list.each { |e| result << e if yield(e) }
    result
  end
end
