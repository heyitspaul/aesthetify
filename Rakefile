require "rake/testtask"

Rake::TestTask.new do |test|
  test.libs << "test"
  test.test_files = FileList["test/*"]
  test.warning = false
end

task default: :test
