require 'spec_helper'

describe 'rbenv::gem' do
  describe 'install bundler' do
    let(:title) { 'bundler' }
    let(:facts) { { :osfamily => 'Debian' } }
    let(:params) do
      {
        :install_dir  => '/usr/local/rbenv',
        :version      => '1.3.5',
        :ruby_version => '2.0.0-p247'
      }
    end

    it { should include_class('rbenv') }

    it { should contain_exec("gem-install-bundler") }

    it { should contain_exec("rbenv-rehash-bundler") }

  end
end