Redmine::Plugin.register :polls do
  name 'Polls plugin'
  author 'Vladislav R.'
  description 'Question & Answer'
  version '0.0.1'
  menu :application_menu, :polls, { :controller => 'polls', :action => 'index' }, :caption => 'Pools'
end
