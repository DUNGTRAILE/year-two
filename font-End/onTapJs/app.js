//  //thêm phần tử
// let lit = [3,4,6,3,764,3,2,1]
// let lit1 = [7,8,9]
// //them
// lit.push(7)
// lit.unshift(0)
// //xoa
// lit.pop()
// lit.shift()

// let n  = lit.length

// lit[0] = 10

// //noi mang
// // let new1 = lit.concat(lit1)
// let new1 = [...lit,...lit1]


// //tim phan tu
// let nd = lit.indexOf(5)


// //xo=a phan tu bat ky
// lit.splice(2,1,89)


// //xap xep mang
// lit.sort( (a,b)  => {
//     return b-a
// })
// let chuoi = ['c++','php','aks']
// chuoi.sort();
// // console.log(chuoi)



// //duyet mang bang forEach
// lit.forEach((item,index) => {
//     // console.log(index+ " = "+item)
// })

// //xu ly du lieu trong maNG
// let newll = lit.map( (item) => {
//     return item*3
// })

// //loc cac phan tu cua mang 
// let locm = lit.filter( (item) => {
//     return item % 2 == 0
// })

// console.log(locm)
// // console.log(newll)
// // console.log(nd)
// // console.log(new1)
// // console.log(n)
// // console.log(lit)


// //tach chuoi 
// let string1 = 'than van dung'

// let ten = string1.split(' ',2)

// // console.log(ten)


// //noi mang tao thanh chuoi
// let string2 = ' o trai le'

// let tongThe = ten.join(' ')

// // console.log(tongThe)


// //Object
// let name3 = 'ten'
// let old = 'tuoi'


// let person = {
//     name : 'than van dung',
//     [old] : 18
// }

// let {name , tuoij = 'khong ton tai'} = person




// //truy xuat vao thuoc tinh
// // document.writeln(person.name)
// // document.writeln(person['name'])

// //qua vong lap
// for( x in person){
//     // console.log(x +' : '+ person[x])
// }

// // tapj thuoc tinh moi 

// person.live='trai le'

// // console.log(person)

// //xoa thuoc tinh
// delete(person.name)

// // console.log(person)

// let car = {
//     a: 12,
//     b:3,
//     sum(){
//         console.log('hello')
//         return this.a + this.b
//     },
    
//     set ay(info){
//         this.a = info
//     }

// }

// car.nhan = function(){
//     console.log('hi')
//     return this.a * this.b
// }
// car.nhan()
// let nn  = car.sum()


// // cac kiêu truy cap phan tu html

// // const h = document.getElementById()
// // const h1 = document.getElementsByClassName()
// // const h2 = document.querySelector()
// // const h3 = document.querySelectorAll()
// // const h4 = document.getElementsByTagName()

// // const root3 = document.getElementById('root')
// // console.log(root3)
// // root3.classList.add('dung','traile') // them
// // root3.classList.remove('dung') // xoa
// // root3.classList.replace('traile','haTinh') // sua doi
// // // root3.className = 'c++ php'
// // root3.innerHTML = 'hello'
// // console.log(root3)
// // //truy cap thuoc tinh bat ky
// // root3.dataset.old  = 10
// // console.log(root3.dataset.old)

//su kien

// const button1 = document.getElementById('cl')

// console.log(button1)

// button1.addEventListener('click', () =>{
//     if(button1.style.backgroundColor == 'red'){
//         button1.style.backgroundColor = 'blue'
//     }
//     else{
//         button1.style.backgroundColor = 'red'
//     }
// })


// window.addEventListener('load',() => {
//     alert('load hoan tat')
// })

// window.addEventListener('resize',() => {
//     if(window.innerWidth < 900){
//     alert('nho qua')
//     }
//     console.log(window.innerHeight + " x " + window.innerWidth)
// })


// button1.addEventListener('mouseover' , () => {
//     button1.innerHTML = 'load...'
// })
// button1.addEventListener('mouseout' , () => {
//     button1.innerHTML = 'dang nhap'
// })


//foucus vaof
// let login = document.getElementById('login')

// login.addEventListener('focus', () => {
//     login.style.border = '3px solid red'
// })
// //ra
// login.addEventListener('blur', () => {
//     login.style.border = '1px solid black'
// })

// login.addEventListener('change',()=>{
//     console.log(login.value)
// })

//keydown and keyup

// login.addEventListener('keydown', (e) => {
//     console.log(e.which)
// })
// login.addEventListener('keyup', () => {
//     console.log('keyup')
// })


// su kien input

// login.addEventListener('input' , () => {
//     console.log(login.value)
// })

// const formh =  document.forms.form1
// console.log(formh)
// formh.addEventListener('submit',(e) => {
//     console.log(login.value)
//     e.preventDefault()
// })

// const formh =  document.forms.form1

// formh.addEventListener('submit',(e) => {
//     const login = document.getElementById('login')
//     const op = document.getElementById('gh')

//     function tgh (o) {
//         let ds = [
//             'trai le',
//             'vinh long',
//             'binh hoa'
//         ]
//         return ds[o]
//     }

//     let ghs = tgh(op.value)

//     let data =`
//         login : ${login.value}
//         giao ho: ${ghs}
//     `

//     const root = document.getElementById('root')

//     root.innerHTML = data

//     e.preventDefault()
// })


//Attribute

// const root = document.getElementById('root')

// console.log(root.getAttribute('old'))
// //theem hoac thay doi 
// root.setAttribute('name','than van dung')
// console.log(root.getAttribute('name'))

// //kiem tra

// console.log(root.hasAttribute('name'))

// //xoa thuoc tinh

// root.removeAttribute('name')

// console.log(root.hasAttribute('name'))


// const img = document.getElementById('img1')

// img.addEventListener('mouseover',()=>{
//     img.setAttribute('src','https://hoanghamobile.com/tin-tuc/wp-content/uploads/2024/06/anh-chua-1.jpg')
// })
// img.addEventListener('mouseout',()=>{
//     img.setAttribute('src','https://hoanghamobile.com/tin-tuc/wp-content/uploads/2024/06/anh-chua-4.jpg')
// })


const ul = document.getElementById('ul')
//truy cap cac node anh em lang gieng
console.log(ul.parentElement)

const il = document.querySelector('li')
console.log(il)
console.log(il.parentElement.parentElement)