require 'spec_helper'

describe 'bt_ruby::default' do

# rbenv
describe group('rbenv') do
  it { should exist }
end

describe user('rbenv') do
  it { should exist }
end

describe user('vagrant') do
  it { should exist }
end

describe file('/opt/rbenv') do
  it { should be_directory }
  it { should be_owned_by 'rbenv' }
  it { should be_grouped_into 'rbenv' }
end

# ruby versions
describe file('/opt/rbenv/versions/2.1.4') do
  it { should be_directory }
end

# gems
describe file('/opt/rbenv') do
  it { should be_directory }
end

describe file('/opt/rbenv/shims/bundler') do
  it { should be_file }
  it { should be_owned_by('rbenv') }
end

describe file('/opt/rbenv/shims/pry') do
  it { should be_file }
  it { should be_owned_by('rbenv') }
end

describe file('/opt/rbenv/shims/nokogiri') do
  it { should be_file }
  it { should be_owned_by('rbenv') }
end

describe file('/opt/rbenv/shims/fauxhai') do
  it { should be_file }
  it { should be_owned_by('rbenv') }
end

describe file('/opt/rbenv/shims/foodcritic') do
  it { should be_file }
  it { should be_owned_by('rbenv') }
end

describe file('/opt/rbenv/shims/rubocop') do
  it { should be_file }
  it { should be_owned_by('rbenv') }
end

describe file('/opt/rbenv/shims/rspec') do
  it { should be_file }
  it { should be_owned_by('rbenv') }
end

# lib_packages
describe package('libxml2-devel') do
  it { should be_installed }
end

describe package('libxslt-devel') do
  it { should be_installed }
end

# keep group write
describe file('/opt/rbenv/versions/2.1.4') do
  it { should be_writable.by('group') }
end

end
