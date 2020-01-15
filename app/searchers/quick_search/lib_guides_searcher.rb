# frozen_string_literal: true

module QuickSearch
  # QuickSearch searcher for LibGuides
  class LibGuidesSearcher < QuickSearch::Searcher
    def search
      resp = @http.get(base_url)
      @response = JSON.parse(resp.body)
    end

    def results # rubocop:disable Metrics/MethodLength
      if results_list
        results_list
      else
        @results_list = []

        @response[0..2].each do |value|
          result = OpenStruct.new
          result.title = value['name']
          result.link = value['url']
          result.description = value['description']
          result.item_format = 'web_page'
          @results_list << result
        end

        @results_list
      end
    end

    def base_url
      QuickSearch::Engine::LIB_GUIDES_CONFIG['base_url'] +
        QuickSearch::Engine::LIB_GUIDES_CONFIG['key'] +
        QuickSearch::Engine::LIB_GUIDES_CONFIG['query_params'] +
        percent_encoded_raw_user_search_query
    end

    def total
      @response.count
    end

    def loaded_link
      QuickSearch::Engine::LIB_GUIDES_CONFIG['loaded_link'] + percent_encoded_raw_user_search_query
    end

    # Returns the percent-encoded search query entered by the user, skipping
    # the default QuickSearch query filtering
    def percent_encoded_raw_user_search_query
      CGI.escape(@q)
    end
  end
end
