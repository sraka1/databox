guard :rspec, all_on_start: false, all_after_pass: false, parallel: false do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch(%r{^lib/databox/(.+)\.rb$}) { |m| "spec/databox/#{m[1]}_spec.rb" }

  watch('spec/spec_helper.rb')  { "spec" }
  watch('lib/databox.rb')  { "spec" }

end
