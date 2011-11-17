$LOAD_PATH.unshift "."
Viiite.bench do |b|
  b.range_over((1..5).map{|n| n*500}, :size) do |size|
    b.report(:require) do
      size.times do |i|
        require "bogus#{i}.rb"
      end
    end
  end
end
