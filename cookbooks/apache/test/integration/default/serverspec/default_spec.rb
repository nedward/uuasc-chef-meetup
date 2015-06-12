require 'spec_helper'

describe 'apache::default' do

  describe package('httpd') do
  it { should be_installed }
end

describe service('httpd') do
	it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe file('/var/www/html/index.html') do
  it { should contain 'Hello' }
end

end