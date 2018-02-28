module QuickSearch
  class LibGuidesSearcher < QuickSearch::Searcher

    def search
      resp = @http.get(base_url)
      @response = JSON.parse(resp.body)
    end

    def results
      if results_list
        results_list

      else
        @results_list = []

        @response[0..2].each do |value|
          result = OpenStruct.new
          result.title = value['name']
          result.link = value['url']
          result.description = value['description']
          @results_list << result
        end

        @results_list
      end

    end

    def base_url
      QuickSearch::Engine::LIB_GUIDES_CONFIG['base_url'] + QuickSearch::Engine::LIB_GUIDES_CONFIG['key'] + QuickSearch::Engine::LIB_GUIDES_CONFIG['query_params'] + http_request_queries['not_escaped']
    end

    def total
      @response.count
    end

    def loaded_link
      QuickSearch::Engine::LIB_GUIDES_CONFIG['loaded_link'] + http_request_queries['uri_escaped']
    end


  end
end