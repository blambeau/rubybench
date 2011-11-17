# Benchmarking Rubies

Rubybench is to benchmarking what [rubyspec](http://rubyspec.org/) is to testing. 
In other words, this project aims at setting up a collection of useful benchmarks 
of available ruby implementations. **The aim is not to compare rubies**, but 
rather to provide a sound, peer reviewed collection of benchmarks to help the 
awesome ruby core developers improving their implementation with respect to 
performance. Among others, rubybench aims at:

* identifying, assessing and hopefully removing bottlenecks of specific 
implementations (MRI, jruby, rubinius, etc.) in specific environments (windows, 
linux, etc.),
* helping avoiding performance regression through benchmarking suites and smart 
mining and reporting tools,
* empirically assessing the temporal complexity of specific algorithms and tools 
in ruby, its standard library and important gems.


