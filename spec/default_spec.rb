require 'spec_helper'

describe file('/etc/hosts') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
end

describe service('nginx') do
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end
