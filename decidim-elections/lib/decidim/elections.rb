# frozen_string_literal: true

require "decidim/elections/admin"
require "decidim/elections/trustee_zone"
require "decidim/elections/engine"
require "decidim/elections/admin_engine"
require "decidim/elections/trustee_zone_engine"
require "decidim/elections/component"
require "decidim/bulletin_board"

module Decidim
  # This namespace holds the logic of the `Elections` component. This component
  # allows users to create elections in a participatory space.
  module Elections
    autoload :AnswerSerializer, "decidim/elections/answer_serializer"

    def self.bulletin_board
      @bulletin_board ||= Decidim::BulletinBoard::Client.new
    end
  end
end
