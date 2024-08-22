CartItem.delete_all
Product.delete_all
Cart.delete_all


robot = Product.create(name: "Робот-пылесос Okami U100 Plus", price: 3530)
hoodie = Product.create(name: "Torae colors Толстовка Lamoda Exclusive", price: 2100)
board = Product.create(name: "Magnetic Whiteboard for Home and Office", price: 740)

robot.image.attach(io: File.open(Rails.root.join('storage/robot.jpg')), filename: 'robot.jpg')
hoodie.image.attach(io: File.open(Rails.root.join('storage/hoodie.jpg')), filename: 'hoodie.jpg')
board.image.attach(io: File.open(Rails.root.join('storage/board.jpg')), filename: 'board.jpg')

cart = Cart.create!

CartItem.create!(cart: cart, product: robot, quantity: 1)
CartItem.create!(cart: cart, product: hoodie, quantity: 2)
CartItem.create!(cart: cart, product: board, quantity: 1)
