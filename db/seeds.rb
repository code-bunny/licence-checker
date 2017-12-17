# Create users
User.create! licence_key: 'som-sup-er-secret'
User.create! licence_key: 'ano-ther-key'
User.create! licence_key: 'yet-anot-er-lic-ence'

# Create Products
Product.create! id: 1, description: 'gamemaster-licence'
Product.create! id: 2, description: 'product-01'
Product.create! id: 3, description: 'product-02'
Product.create! id: 4, description: 'sub-product-01', product_id: 3

# Create Licences
Licence.create! key: 'som-sup-er-secret',   user_id: 1, product_id: 1, expires_at: Time.now + (3600 * 24 * 365)
Licence.create! key: 'no-coffee',           user_id: 1, product_id: 2, expires_at: Time.now + (3600 * 24 * 365)
Licence.create! key: 'and-no-cake',         user_id: 1, product_id: 3, expires_at: Time.now + (3600 * 24 * 365)
Licence.create! key: 'make-developers-sad', user_id: 1, product_id: 4, expires_at: Time.now + (3600 * 24 * 365)
