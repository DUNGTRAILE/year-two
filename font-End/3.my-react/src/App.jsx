import './App.css'
import demoimg from '../src/assets/img/Untitled.png'
let today = new Date().toLocaleDateString()
let time = new Date().toLocaleTimeString()



const well = [
  "chào bạn đến với trại lê",
  "bạn đến thăm du lịch",
  "thế giới react"
]

function Header() {
  let titles = Math.floor(Math.random() * well.length)
  return (
    <>
      <h2>{well[titles]}</h2>
      <p>hôm nay là <strong>{today}</strong>. thoi gian hien tai la <strong>{time}</strong></p>
    </>
  )
}

const namee = 'Dung'
let tt = true

function DinamicValue(){
  return(
    <>
      <h2>Xin Chao {namee}</h2>
      <p>{tt ? 'troi mua':'troi nang'}</p>
      <img src={demoimg}alt="" />
    </>
    
  )
}

function App() {
  // const [count, setCount] = useState(0)

  return (
    <>
      <Header/>
      <DinamicValue/>
      {/* <h1>đây là tiêu đề</h1>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. At, accusamus.</p> */}
    </>
  )
}

export default App
