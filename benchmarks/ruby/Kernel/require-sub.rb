$LOAD_PATH.unshift "."
Viiite.bench do |b|
  size = ENV["size"].to_i
  b.variation_point :size, size
  b.report(:require) do
    size.times do |i|
      require "bogus#{i}.rb"
    end
  end
end
