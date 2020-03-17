//  Mondo Italiano App JS

/*
    Shopping Cart
*/

function add_to_cart(id) {
  let key = 'product_' + id

  let p = localStorage.getItem(key)
  p = p * 1 + 1 // One click add one product to cart
  localStorage.setItem(key, p)

  update_orders()
}

function get_items_quantity() {
  let quantity = 0

  for(let i = 0; i < localStorage.length; i++) {
    let key = localStorage.key(i)
    let value = localStorage.getItem(key)

    if(key.indexOf('product_') == 0) {
      quantity = quantity + value * 1
    }
  }

  return quantity
}

function get_orders() {
  let orders = ''

  for(let i = 0; i < localStorage.length; i++) {
    let key = localStorage.key(i)
    let value = localStorage.getItem(key)

    if(key.indexOf('product_') == 0) {
      orders = orders + key + "=" + value + ','
    }
  }

  return orders
}

function update_orders() {
  let orders = get_orders()

  $('#orders').val(orders) // jQuery call
}