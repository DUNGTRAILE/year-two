class User {

    constructor(fullname) {
        this.fullname = fullname
    }
    show() {
        return `Xin chao ${this.fullname} !`
    }
    render() {
        document.getElementById('root').
        innerHTML = this.show()
    }
}
// let n = new User('than van dung')
// n.render()
// let tvl = new User('than van long')
// console.log(n)
// console.log(n.show())
// console.log(tvl.show())

class Student extends User {
    constructor(fullname,uni,stdYear){
        super(fullname)
        this.uni = uni
        this.stdYear = stdYear
    }
    introduce(){
        return  `${super.show()}
dang hoc tai truong ${this.uni} va nam thu ${this.stdYear}`
    }
}

let st = new Student('than van dung' , 'khoa hoc hue',2)
console.log(st.introduce())
