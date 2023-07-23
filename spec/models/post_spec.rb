# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  describe '#sample' do
    before do
      @post = Post.create!(name: 'foo bar')
    end
    it 'first test' do
      expect(Post.all.first.name).to eq('foo bar')
    end
  end
end
