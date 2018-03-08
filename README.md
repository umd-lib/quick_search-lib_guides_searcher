# quick_search-lib_guides_searcher

LibGuides searcher for NCSU Quick Search

## Installation

Include the searcher gem in your Gemfile:

```
gem 'quick_search-lib_guides_searcher'
```

Run bundle install:

```
bundle install
```

Include in your Search Results page

```
<%= render_module(@lib_guides, 'lib_guides') %>
```

Customize the configuration files at:

```
config/locale/en.yml
config/lib_guides_config.yml
```

## Configuration

LibGuides requires configuration, such as a site id and API key.
To set the configuration, create a "config/searchers/" directory in your application (the "searchers" subdirectory may need to be created), and copy the "config/lib_guides_config.yml" file in this gem into it. Follow the instructions in the file to configure the searcher.
