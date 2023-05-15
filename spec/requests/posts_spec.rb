# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '/posts', type: :request do
  # Get /postsのIndexメソッドでJSONを取得
  describe 'GET /index' do
    it 'renders a successful response' do
      Post.create!(name: 'test')
      # json形式で取得
      get posts_url, as: :json
      expect(response).to be_successful
      p response.body
      assert_schema_conform(200)
    end
  end
end
