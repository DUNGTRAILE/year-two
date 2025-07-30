const root = document.getElementById('root') 

let products = [
   {
      id:1,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdnv2.tgdd.vn/mwg-static/tgdd/Products/Images/44/317704/asus-vivobook-14-x1404va-i5-nk050w-170225-104151-335-600x600.jpg'
   },
   {
      id:2,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdn.tgdd.vn/Products/Images/42/334864/iphone-16e-white-thumb-600x600.jpg'
   },
   {
      id:3,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdn.tgdd.vn/Products/Images/42/338741/samsung-galaxy-z-flip7-fe-white-thumb-600x600.jpg'
   },
   {
      id:4,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdnv2.tgdd.vn/mwg-static/tgdd/Products/Images/44/330578/asus-fa506ncr-r7-hn097w-170225-113322-493-600x600.jpg'
   },
   {
      id:1,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdnv2.tgdd.vn/mwg-static/tgdd/Products/Images/44/317704/asus-vivobook-14-x1404va-i5-nk050w-170225-104151-335-600x600.jpg'
   },
   {
      id:2,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdn.tgdd.vn/Products/Images/42/334864/iphone-16e-white-thumb-600x600.jpg'
   },
   {
      id:3,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdn.tgdd.vn/Products/Images/42/338741/samsung-galaxy-z-flip7-fe-white-thumb-600x600.jpg'
   },
   {
      id:4,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdnv2.tgdd.vn/mwg-static/tgdd/Products/Images/44/330578/asus-fa506ncr-r7-hn097w-170225-113322-493-600x600.jpg'
   },
   {
      id:1,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdnv2.tgdd.vn/mwg-static/tgdd/Products/Images/44/317704/asus-vivobook-14-x1404va-i5-nk050w-170225-104151-335-600x600.jpg'
   },
   {
      id:2,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdn.tgdd.vn/Products/Images/42/334864/iphone-16e-white-thumb-600x600.jpg'
   },
   {
      id:3,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdn.tgdd.vn/Products/Images/42/338741/samsung-galaxy-z-flip7-fe-white-thumb-600x600.jpg'
   },
   {
      id:4,
      name: 'iphone 14',
      ram: '6GB',
      price: '24.000.444',
      img:'https://cdnv2.tgdd.vn/mwg-static/tgdd/Products/Images/44/330578/asus-fa506ncr-r7-hn097w-170225-113322-493-600x600.jpg'
   }
]

let datas = products.map((item) => {
   return `<li class="prtdsd">
            <div class="child-menu">
                <a href="#" class="product-thumb">
                    <img src=${item.img}>
                </a>
                <a href="#" class="name">${item.name}</a>
                <span>Giá: ${item.price}</span>
                <span>Ram: ${item.ram}</span>
            </div>
        </li>`
})

datas.join(' ')

const product = document.getElementById('product')

product.innerHTML = datas

 let myArry = [1,2,3,4]


 let newAray = myArry.map( (item, index) => {
    return `${index+1}: ${item} nhan 3 bang ${item*3} `
 })
 console.log(newAray)

const pr = document.querySelectorAll('.child-menu')

console.log(pr)

// pr.forEach( (element) => {
//    element.addEventListener('')
// });
