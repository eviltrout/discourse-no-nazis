# frozen_string_literal: true
require 'rails_helper'

describe 'User validator' do

  # note: realnazi@example.com was added for testing purposes
  it "will consider an email in the hash invalid" do
    expect(Fabricate.build(:user, email: 'not.nazi@example.com')).to be_valid
    expect(Fabricate.build(:user, email: 'realnazi@example.com')).not_to be_valid
    expect(Fabricate.build(:user, email: 'ASDFASDFASDF')).not_to be_valid
  end

end
