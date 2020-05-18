require 'redmine'

paths = Dir.glob("#{Rails.application.config.root}/plugins/redmine_elasticsearch/{lib,app/models,app/controllers}")

Rails.application.config.eager_load_paths += paths
Rails.application.config.autoload_paths += paths
ActiveSupport::Dependencies.autoload_paths += paths

Redmine::Plugin.register :redmine_elasticsearch do
  name        'Redmine Elasticsearch Plugin'
  description 'This plugin integrates the Elasticsearch full-text search engine into Redmine.'
  author      'Restream'
  version     '0.2.1'
  url         'https://github.com/Restream/redmine_elasticsearch'

  requires_redmine version_or_higher: '2.1'
end

require 'redmine_elasticsearch'
