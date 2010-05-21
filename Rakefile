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

task :push do
  sh "git push origin master"
  sh "git push heroku master"
end

task :setup_heroku do
  sh "heroku config:add COUCHDB_KEY=sldkjflkdjsafjdslajfsadjfk COUCHDB_PASSWORD=JLDKjfkadsjfka232js23ffa54FJDs COUCHDB_DB=http://username.cloudant.com:5984/mydb/"
end
