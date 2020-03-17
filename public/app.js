// Mondo Italiano App :: JS

function add_to_cart(id) {
  let key = 'product_' + id

  let p = localStorage.getItem(key)
  p = p * 1 + 1 // One click add one product to cart
  localStorage.setItem(key, p)

  alert('Items in your cart: ' + get_items_quantity())
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