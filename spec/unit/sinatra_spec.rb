require 'spec_helper'

describe 'sina' do
  describe port(80) do
    it { should be_listening }
  end

  describe package('perl') do
    it { should be_installed }
  end

  describe file('/root/app/Gemfile') do
    it { should be_file}
  end

  describe file('/usr/local/bin/ruby') do
    it { should be_executable }
  end
end
