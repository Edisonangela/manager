module MenuType
  TYPES = {
    click: '事件触发',
    view:  '链接跳转'
  }

  KEYS = {
    menu:    '菜单',
    takeout: '外卖',
    store:   '门店'
  }


  def self.type_options
    [["事件触发", :click], ['链接跳转', :view]]
  end

  def human_type
    TYPES[self.menu_type.to_sym] if self.menu_type
  end
end