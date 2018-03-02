Rails.application.routes.draw do
  mount QuickSearchLibGuidesSearcher::Engine => "/quick_search-lib_guides_searcher"
end
