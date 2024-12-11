let list = []
let count = 0
let tmp = []
// localStorage.removeItem('list')
//hàm nạp dữ liệu và lấy dữ liệu
const addData = (data) => {
    localStorage.setItem('list', JSON.stringify(data))
}
const outData = () => {
    return JSON.parse(localStorage.getItem('list'))
}
const fil = (name) => {
    let str = outData()
    let kq = ''
    console.log(str)
    for(let j = 0 ; j < str.length; j++) {
        // console.log(str[j])
        let nameOk = '<del>'+str[j].name+'</del>'
        console.log(name.innerHTML)
        if(str[j].name == name){
           kq = name
            break
        }
        if(nameOk == name){
           kq = str[j].name
            break
        }
    }
    return kq
}
// lấy dữ liệu từ loca nếu có
if(JSON.parse(localStorage.getItem('list')) != null) {
    list = JSON.parse(localStorage.getItem('list'))
    tmp = JSON.parse(localStorage.getItem('list'))
}
else{
    localStorage.setItem('list',JSON.stringify(list))
}
//in dữ liệu ban đầu
const print = (data) => {
    let count = 0
    data.forEach((item) => {
        if(item.flag == 0){
            item.name = '<del>'+item.name+'</del>'
            count++
        }
    })
    let dataHtml = data.map((item) => {
        return `<li class="product-job">
          <div class="name-job">${item.name}</div>
          <div class="tool-job">
            <img class="pen" src="assets/images/Vector.png" hover="assets/images/xxx.png" alt="">
            <img class="del" src="assets/images/Vector(1).png" hover="assets/images/nhan.png" alt="">
          </div>
        </li>`
    })
    document.querySelector('.list-job ul').innerHTML = dataHtml.join('')
    document.querySelector('.count').innerHTML = `Yeah, ${count} task  completed`
}

// các sự kiện
let evemn = ()=>{
    const job = document.getElementById('job');
    const btn2 = document.getElementById('edit')
    let btn = document.getElementById('submit')
    const nameAll = document.querySelectorAll('.name-job')
// console.log(job.value)
    console.log(nameAll)
    for(let i = 0; i < nameAll.length; i++) {
        // console.log('name[i]')
        nameAll[i].addEventListener('click', (e) => {
            // console.log(nameAll[i])
            let str = outData()
            console.log(str)
            for(let j = 0 ; j < str.length; j++) {
                // console.log(str[j])
                let nameOk = '<del>'+str[j].name+'</del>'
                console.log(nameAll[i].innerHTML)
                if(str[j].name == nameAll[i].innerHTML){
                    // console.log(str[j])
                    str[j].flag = 0
                    nameAll[i].innerHTML = nameOk
                    console.log(str[j].flag)
                    break

                }
                if(nameOk == nameAll[i].innerHTML){
                    str[j].flag = 1
                    nameAll[i].innerHTML = str[j].name
                    console.log(str[j].flag)
                    break
                }
            }
            // console.log(str[j].flag)
            addData(str)
            let count = 0
            for(let j = 0 ; j < str.length; j++) {
                if(str[j].flag == 0){
                    count++
                }
            }
            document.querySelector('.count').innerHTML = `Yeah, ${count} task  completed`
            // print(str)
            console.log(str)
        })
    }
    const pens = document.querySelectorAll('.pen')
    const dels = document.querySelectorAll('.del')
// xử lý khi ấn vào pen
    for(let i = 0; i < pens.length; i++){
        pens[i].addEventListener('click', (e) => {
            pens[i].style.display = 'none'
            dels[i].style.display = 'none'
            job.value = fil(nameAll[i].innerHTML)
            job.setAttribute('flag', i)
        })
        dels[i].addEventListener('click', (e) => {
            let data = outData()
            data.splice(i, 1)
            addData(data)
            print(data)
            evemn()
        })
    }
}
let btn = document.getElementById('submit')
// console.log(btn.innerHTML)
const job = document.getElementById('job');
const nameAll = document.querySelectorAll('.name-job')
btn.addEventListener('click', e => {
    btn.style.background = '#880015'
    setTimeout(() => {
        // document.body.classList.remove('flash');
        btn.style.background= '#880015' ? '#FF2B2B' : '#880015'; // Thay đổi màu nền
    }, 100);
    const flag = job.getAttribute('flag')
    let tmp = outData()
    console.log(tmp)
    let thu = 1
    for(let i = 0; i < tmp.length; i++){
        if(job.value == tmp[i].name){
            thu = 0
        }
    }
    if(job.value == ''){
        document.querySelector('.tt').innerHTML = 'Nhập lại!(Phải nhập công việc)'
        document.querySelector('.tt').style.color = 'red'
        document.querySelector('.tt').style.marginTop = '5px'
    }
    else if(thu == 0){
        document.querySelector('.tt').innerHTML = 'Nhập lại!(Công việc đã tồn tại)'
        document.querySelector('.tt').style.color = 'red'
        document.querySelector('.tt').style.marginTop = '5px'
    }
    else if(flag != '-1'){
        document.querySelector('.tt').innerHTML = ''
        let x = outData()
        // console.log( x[flag].name)
        // const newName = fil(job.value)
        x[flag].name = job.value
        console.log( x[flag].name)
        print(x)
        addData(x)
        evemn()
        job.value = ''
        job.setAttribute('flag',-1)
        // nameAll[flag] = job.value
    }
    else{
        document.querySelector('.tt').innerHTML = ''
        let lit = outData()
        let data = {
            name: job.value,
            flag: 1
        }
        lit.push(data)
        addData(lit)
        print(lit)
        evemn()
        job.value = ''
    }
})


print(list)
evemn()




// btn2.addEventListener('click', e => {
//
// })
