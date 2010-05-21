begin
  require 'spec/rake/spectask'
rescue LoadError
  puts 'please gem install rspec'
  exit
end

task :default => :spec

desc "Run Rspec"
Spec::Rake::SpecTask.new do |t|
  t.spec_opts = ['--options', "spec/spec.opts"]
  t.spec_files = FileList['spec/**/*_spec.rb']
end