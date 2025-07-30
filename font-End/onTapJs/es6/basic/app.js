const root = document.getElementById('root') 

// let a = 80 , b = 20 , result

// // result = "tong cua " + a + " va " + b + " la " + (a+b)
// result = `tong cua ${a} va ${b} la ${a+b}`
// console.log(result)


// root.innerHTML = result


// let sum = a =>  console.log(a)

// sum(10)
 let myArry = [1,2,3,4]

 let newAray = myArry.map( (item, index) => {
    return `${index+1}: ${item} nhan 3 bang ${item*3} `
 })
 console.log(newAray)


