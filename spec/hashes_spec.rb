# frozen_string_literal: true
require 'rails_helper'

describe 'email hash test' do

  describe 'hit?' do
    it "returns false for a blank email" do
      expect(DiscourseNoNazis.hit?(nil)).to eq(false)
      expect(DiscourseNoNazis.hit?('')).to eq(false)
    end

    it "returns false for an email not in the list" do
      expect(DiscourseNoNazis.hit?('not_nazi@example.com')).to eq(false)
    end

    # note: realnazi@example.com was added for testing purposes
    it "returns true for an email in the list" do
      expect(DiscourseNoNazis.hit?('realnazi@example.com')).to eq(true)
      expect(DiscourseNoNazis.hit?('RealNazi@example.com')).to eq(true)
    end
  end

end
