Rails.application.routes.draw do
  mount QuickSearch::LibGuidesSearcher::Engine => "/quick_search-lib_guides_searcher"
end
