require 'rails_helper'

RSpec.describe Api::Test::GetRequest do

  describe "GET #index" do

    it "returns http success" do
      get "https://jsonplaceholder.typicode.com/posts"
      expect(response).to have_http_status(:success)
    end

    it "JSON body response contains expected recipe attributes" do
      json_response = JSON.parse(response.body)
      expect(hash_body.keys).to match_array([:id, :ingredients, :instructions])
    end

  end

end