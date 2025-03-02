# frozen_string_literal: true

require "spec_helper"
require "decidim/api/test/type_context"

describe "Decidim::Api::QueryType" do
  include_context "with a graphql type"
  let(:schema) { Decidim::Api::Schema }

  let(:locale) { "en" }

  let(:query) do
    %(
      query {
        hashtags{
          name
        }
      }
    )
  end

  describe "valid query" do
    it "executes sucessfully" do
      expect { response }.not_to raise_error(StandardError)
    end

    it "has hashtags" do
      expect(response["hashtags"]).to eq([])
    end
  end
end
