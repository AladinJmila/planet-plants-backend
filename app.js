const express = require('express')
const { engine } = require('express-handlebars')
const path = require('path')
const getDBdata = require('./src/db')
const bodyParser = require('body-parser')
const fs = require('fs')
const db = require('./db.json')

// Create an instance of the Express application
const app = express()

// Define the port number for the server
const port = process.env.PORT || 4388

// Serve static files from the 'public' directory
app.use(express.static(path.join(__dirname, 'public')))

// Parse JSON request bodies
app.use(bodyParser.json())
// Parse URL-encoded request bodies
app.use(bodyParser.urlencoded({ extended: false }))

// Set Handlebars as the view engine
app.engine('handlebars', engine())
app.set('view engine', 'handlebars')
app.set('views', './views')

// Route to render the home page
app.get('/', async (req, res) => {
  // Fetch data from the database and map it to include 'stars' based on 'rating'
  // let data = await getDBdata('SELECT * FROM products;')
  // data = data.map(product => ({
  //   ...product,
  //   stars: Math.floor(product.rating),
  // }))

  const data = db.map(item => item.product)

  // Render the 'home' template with the retrieved data
  res.render('home', { data })
})

// Route to render the login page
app.get('/login', async (req, res) => {
  res.render('login')
})

// Route to handle login requests
app.post('/login', async (req, res) => {
  let isAuthenticated = false
  const { username, password } = req.body

  try {
    // Check if the provided username and password match the database records
    // const data = await getDBdata(
    //   `SELECT password FROM users WHERE username = '${username}'`
    // )

    // If a matching user is found, set isAuthenticated to true
    // if (data.length && data[0].password === password) isAuthenticated = true

    // Send JSON response indicating whether authentication was successful
    // res.send({ isAuthenticated })
    res.send({ isAuthenticated: true })
  } catch (error) {
    // Handle database errors and send an appropriate response
    console.log('Database error: ', error)
    res.status(500).render('error', { message: 'Internal server error' })
  }
})

// Route to render the plant details page based on product ID
app.get('/plants/:id', async (req, res) => {
  const id = req.params.id
  try {
    // const products = await getDBdata(
    //   `SELECT * FROM products WHERE product_id = '${id}';`
    // )
    // const reviews = await getDBdata(
    //   `SELECT * FROM reviews WHERE product_id = '${id}';`
    // )
    // const similar =
    //   await getDBdata(`SELECT p.name, p.image_url, p.price, p.rating, p.product_id FROM products p
    //                               JOIN products_similar_products ps ON ps.product_id = '${id}'
    //                               WHERE p.product_id = ps.similar_product_id;`)

    // Render the 'plant' template with the retrieved data
    // res.render('plant', {
    //   data: {
    //     product: { ...products[0], stars: Math.floor(products[0].rating) },
    //     reviews,
    //     similar: similar.map(product => ({
    //       ...product,
    //       stars: Math.floor(product.rating),
    //     })),
    //   },
    // })

    const data = db.find(item => item.product.product_id.toString() === id)
    if (!data) throw new Error('Data not found')

    res.render('plant', { data })
  } catch (error) {
    // Handle database errors and send an appropriate response
    console.log('Database error: ', error)
    // res.status(500).render('error', { message: 'Internal server error' })
    res.status(500).render('error', { message: 'Plant not found' })
  }
})

// Route to render the basket page
app.get('/basket', async (req, res) => {
  // Check if the 'orders' query parameter is provided and not empty
  if (!req.query?.orders || !JSON.parse(req.query.orders).length) {
    return res.status(404).render('error', { message: 'Your basket is empty' })
  }

  // Retrieve the orders from the query parameter and fetch corresponding product data
  const orders = JSON.parse(req.query.orders)
  const productsIds = orders.map(product => product?.productId)

  try {
    // const data = await getDBdata(
    //   `SELECT * FROM products WHERE product_id IN (${productsIds.join(',')});`
    // )

    const data = db
      .filter(item =>
        orders.map(o => o.productId).includes(item.product.product_id)
      )
      .map(item => item.product)

    // Add 'quantity' property to product data based on the orders
    data &&
      data.forEach(product => {
        orders.forEach(order => {
          if (order.productId === product.product_id) {
            product.quantity = order.count
          }
        })
      })

    // Render the 'basket' template with the retrieved product data
    res.render('basket', { data })
  } catch (error) {
    // Handle database errors and send an appropriate response
    console.log('Database error: ', error)
    res.status(500).render('error', { message: 'Internal server error' })
  }
})

// Middleware to handle invalid routes
app.use((req, res) => {
  res.status(404).render('error', { message: '404 - Page not found!' })
})

// Start the server and listen on the specified port
app.listen(port, () => {
  console.log(`Server running on port ${port}...`)
})

// app.get('/export-db', async (req, res) => {
//   const db = []

//   for (let id = 1; id <= 27; id++) {
//     try {
//       const products = await getDBdata(
//         `SELECT * FROM products WHERE product_id = '${id}';`
//       )
//       const reviews = await getDBdata(
//         `SELECT * FROM reviews WHERE product_id = '${id}';`
//       )
//       const similar =
//         await getDBdata(`SELECT p.name, p.image_url, p.price, p.rating, p.product_id FROM products p
//                                     JOIN products_similar_products ps ON ps.product_id = '${id}'
//                                     WHERE p.product_id = ps.similar_product_id;`)

//       const plant = {
//         product: { ...products[0], stars: Math.floor(products[0].rating) },
//         reviews,
//         similar: similar.map(product => ({
//           ...product,
//           stars: Math.floor(product.rating),
//         })),
//       }

//       db.push(plant)
//     } catch (error) {
//       // Handle database errors and send an appropriate response
//       console.log('Database error: ', error)
//       res.status(500).render('error', { message: 'Internal server error' })
//     }
//   }

//   fs.writeFileSync('db.json', JSON.stringify(db))
// })
