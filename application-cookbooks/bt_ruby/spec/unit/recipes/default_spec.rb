#
# Cookbook Name:: bt_ruby
# Spec:: default
#
# Copyright (c) 2015 JP, All Rights Reserved.

require 'spec_helper'

describe 'bt_ruby::default' do

  before do
    Fauxhai.mock(platform: 'centos', version: '6.5')
  end

  context 'When default recipe is run' do

    cached(:chef_run) do
      ChefSpec::ServerRunner.new.converge(described_recipe)
    end

    it 'converges successfully' do
      chef_run 
    end

    it 'should have created user rbenv' do
      expect(chef_run).to create_user('rbenv')
    end

    it 'should have created group rbenv' do
      expect(chef_run).to create_group('rbenv')
    end

    it 'should have created rbenv directory' do
      expect(chef_run).to create_directory('/opt/rbenv').with(
        user:   'rbenv',
        group:  'rbenv'
      )
    end

    it 'should have created rbenv shims directory' do
      expect(chef_run).to create_directory('/opt/rbenv/shims')
    end

  end
end


