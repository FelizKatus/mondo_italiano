// Mondo Italiano App :: Custom JS

function add_to_cart(id) {
  let key = 'product_' + id

  let p = localStorage.getItem(key)
  p = p * 1 + 1 // One click add one product to cart
  localStorage.setItem(key, p)
}