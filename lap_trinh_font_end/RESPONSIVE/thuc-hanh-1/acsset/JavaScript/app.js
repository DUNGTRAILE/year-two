const allMenu = document.querySelector(".all img")
const menu = document.querySelector('.menu-header')
const dow = document.querySelector('.download')
// console.log(menu)
allMenu.addEventListener('click', () => {
    // console.log('oki')
    let flag = allMenu.getAttribute('flag')
    console.log(flag)
    if(flag == 1){
        menu.style.display = 'block'
        allMenu.setAttribute('flag', 0)
    }
    else{
        menu.style.display = 'none'
        allMenu.setAttribute('flag', 1)
    }

})
if(window.innerWidth <768){
    menu.style.display = 'none'
    dow.style.display = 'none'
}


window.addEventListener('resize' , () => {
    if(window.innerWidth >= 768){
        menu.style.display = 'block'
        allMenu.setAttribute('flag', 0)
        dow.style.display = 'block'
    }
    if(window.innerWidth <768){
        menu.style.display = 'none'
        allMenu.setAttribute('flag', 1)
        dow.style.display = 'none'
    }
})
