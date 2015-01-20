# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.destroy_all
User.destroy_all
Category.destroy_all
Item.destroy_all
Shop.destroy_all

AdminUser.create(email: 'admin@example.com', password: 'password', is_admin: true)
jerry = User.new(openid: 'jerryatsephplus')
jerry.save(validate: false)

feixiong = User.new(openid: 'feixiongatsephplus')
feixiong.save(validate: false)

['燃面系列', '汤面系列', '抄手系列', '炒饭系列', '特色点心', '爽口凉菜', '饮料系列'].each do |cat|
  Category.create(name: cat)
end

[
  ['叙府燃面', 'XuFu Burning Noodles', 17, '特制芽菜、花生碎米、肉糜', 2],
  ['辣子鸡燃面', 'Burning Noodles with Spicy Chicken', 17, '香辣鸡丁、笋尖', 1],
  ['蜀味凉面', 'Cold Noodles', 16, '龙须牛肉、海带丝、花生、豆芽', 2],
  ['豇豆燃面', 'Burning Noodles with Cowpea', 18, '肉糜、豇豆', 2],
  ['双椒牛肉燃面', 'Burning Noodles with Shredded Beef and Bell Peppe', 18, '牛肉糜、川红椒、豆芽', 3],
  ['绝品牛肉面', 'Noodle Soup with Braised Beef', 19, '上等牛肉、笋尖', 3],
  ['蜀味排骨面', 'Noodle Soup with Spare Ribs', 18, '排骨、木耳丝', 2],
  ['红油臊子面', 'Noodle Soup with Spicy Meat Paste', 16, '肉糜、红油', 2],
  ['香辣蹄花面', 'Noodle Soup with Pork Trotters', 22, '蹄尖、豌豆', 2],
  ['原味炖鸡面', 'Noodle Soup with Chicken', 19, '鸡丁、青菜、笋片']  ,
  ['老鸭竹荪面', 'Noodle Soup with Roasted Duck and Dictyophora', 23, '卤鸭、竹荪'],
  ['上汤三鲜面', 'Noodle Soup with Seafood', 21, '虾、香菇、鱿鱼'],
  ['菌王面', 'Noodle Soup with Mushrooms', 21, '金针菇、平菇、香菇'],
  ['竹笋酸菜面', 'Noodle Soup with Bamboo Shoots and Sauerkraut', 19, '竹笋、酸菜、肉片'],
  ['素养生面', 'Noodle Soup with Varied Vegetables', 17, '木耳丝、萝卜、青菜、玉米'],
  ['红油抄手', 'Spicy Wonton Soup', 18, '红汤、抄手', 2],
  ['燃抄手', 'Burning Wonton', 17, '特制芽菜、花生米', 1],
  ['鲜味抄手', 'Wonton Soup', 19, '三鲜汤、抄手'],
  ['豇豆肉糜炒饭', 'Meat with Cowpea Fried Rice', 18, '豇豆、肉糜'],
  ['虾仁炒饭', 'Shrimps Fried Rice', 21, '虾仁、鸡蛋'],
  ['麻辣牛肉炒饭', 'Super Spicy Beef Fried Rices', 19, '麻辣牛肉、土豆', 3],
  ['芽菜肉糜炒饭', 'Meat with Bean Sprouts Fried Rice', 17, '特制芽菜、肉糜、胡萝卜'],
  ['野山椒肉丝炒饭', 'Shredded Meat with Wild Pepper Fried Rice', 18, '野山椒、肉丝', 4],
  ['鱼香肉丝炒饭', 'Fish-flavored Fried Rice', 18, '鱼香、肉丝、木耳丝'],
  ['蜀香蛋炒饭', 'Egg Fried Rice', 15, '鸡蛋、玉米、青豆'],
  ['蜀香奶黄包', 'Steamed Bread with Milk and Egg', 9, '蛋黄、牛奶、糖'],
  ['肉糜蒸蛋', 'Steamed Egg', 5, '肉糜、鸡蛋'],
  ['竹香小黄粑', 'Steamed Sichuan Pastry', 11, '糯米、酥油'],
  ['蜀味蒸饺', 'Steamed Dumpling', 9, '肉糜、面粉、葱'],
  ['珍珠丸子', 'Pearl-shaped Cake', 13, '西米、芝麻、花生'],
  ['叶儿粑', 'Sichuan Sticky Rice Cake', 12, '肉糜、糯米'],
  ['玉米窝窝头', 'Sichuan Cornmeal Bread', 9, '玉米粉、白糖'],
  ['金针菇肥牛', 'Needle Mushroom with Sliced Beef', 13, '金针菇、上等肥牛'],
  ['凉拌海带丝', 'Kelp in Chili Sauce', 7, '海带丝、川椒'],
  ['凉拌豆腐干', 'Bean Curd in Chili Sauce', 8, '豆腐干、川椒'],
  ['凉拌鸡蛋干', 'Jidangan in Chili Sauce', 9, '鸡蛋干、川椒'],
  ['蜀味拌黄瓜', 'Cucumber Salad Dressed with Sauce', 7, '黄瓜、川椒'],
  ['油酥花生', 'Crispy Peanuts', 8, '花椒、花生'],
  ['糖拌西红柿', 'Tomatoes in Sugar', 9, '西红柿、白糖'],
  ['山椒木耳丝', 'Agaric Mixed with Wild Pepper', 9, '野山椒、木耳丝'],
  ['泡椒凤爪', 'Chicken Feet with Wild Pepper', 10, '凤爪、野山椒'],
  ['蜀味海藻', 'Seaweed Salad', 11, '海藻、香油'],
  ['银耳汤', 'Tremella Soup', 5],
  ['水晶冰粉', 'Crystal Bingfen', 5]   ,
  ['黑芝麻核桃羹', 'Sesame and Walnut Juice', 9],
  ['红枣羹', 'Red Date Juice', 9],
  ['营养花生浆', 'Nutrient Peanut Juice', 12],
  ['蜂蜜黄瓜汁', 'Fresh Cucumber Juice with Honey', 13],
  ['鲜榨香蕉汁', 'Fresh Banana Juice', 12],
  ['鲜榨菠萝汁', 'Fresh Pineapple Juice', 12],
  ['鲜榨西瓜汁', 'Fresh Watermelon Juice', 12],
  ['酸梅汁', 'Plum Juice', 6],
  ['阳光芒果汁', 'Sunshine Mango Juice', 8],
  ['七喜柠檬冰', 'Seven-up Lemon Juice', 7],
  ['柠檬红茶', 'Lemon Black Tea', 6],
  ['柠檬可乐冰', 'Lemon Coke', 7]
].each do |i|
  materials = i[3].nil? ? '' : i[3].split('、')
  level = i[4].nil? ? 0 : i[4]
  category_ids = Category.all.map(&:id)
  Item.create(name: i[0], code: i[1], price: i[2], material_list: materials.blank? ? '' : materials.join(','), level: level, category_id: category_ids.sample)
end