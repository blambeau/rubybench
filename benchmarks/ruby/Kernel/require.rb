# This benchmark is much inspired from https://gist.github.com/1278881 whose aim
# was initially to compare ruby 1.9.4 (2.0) with and without Yura Sokolov's 
# patch [Feature #5427]. See also https://gist.github.com/c8d0d422a9203e1fe492
require 'epath'

Viiite.bench do |b|
  b.variation_point :ruby, Viiite.which_ruby
  Path.tmpdir do |dir|
    2500.times do |i|
      (dir/"bogus#{i}.rb").write("")
    end
    b.range_over((1..5).map{|n| n*500}, :size) do |size|
      env  = {"size" => size.to_s}
      cmd  = "viiite run " + (Path.dir/'require-sub.rb')
      opts = {:chdir => dir.to_s}
      b.report_native(env, cmd, opts) do |io|
        Alf::Reader.reader(io).to_rel
      end
    end
  end
end


