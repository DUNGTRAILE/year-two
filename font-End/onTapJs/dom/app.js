

const divNew = document.createElement('div')
divNew.id = 'divjN'
divNew.classList = 'gh to4'
divNew.innerText = 'Trai lee'

// const divd = document.getElementById('if')

const divNew1 = document.createElement('div')
divNew1.id = 'ghghv'
divNew1.classList= 'gh t4'
divNew1.innerText = 'Trai lee'

const divNew2 = document.createElement('div')
divNew2.id = 'divN'
divNew2.classList= 'gh t4'
divNew2.innerText = 'Trai lee'

const divNew4 = document.createElement('div')
divNew4.id = 'divNsd'
divNew4.className = 'gh t4'
divNew4.innerText = 'hoe'


document.body.appendChild(divNew)
//thêm vào sau
divNew.append(divNew1,divNew2)
const s2 = document.getElementById('divN')
//thêm vào truoc
// divNew.prepend(divNew1,divNew2)
//thêm vào truoc phan tu cho truoc
// divNew.insertAfter(divNew4,s2)
// console.log(divNew.querySelector('#ghghv'))

// them trước và sau phần tử
// chinh.before('phan tu them') them sau
// chinh.after('phan tu them') them truoc

//xoa 1 phan tu
// phanTuCanXoa.remove()
// phanTuCha.removeChild(pt con can xoa)


//thay the phan tu
// phanTuCha.replaceChild(ptuDeThayThe, ptuCanThayThe)


const clonel = divNew.cloneNode(true)


document.body.appendChild(clonel)
console.log(clonel)



