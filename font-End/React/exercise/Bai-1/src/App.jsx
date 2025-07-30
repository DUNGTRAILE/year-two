import { useState } from 'react'
import './App.css'
import logo from "./assets/images/logo.png"
function App() {
  const [greeting,setGreeting] = useState("Xin chào bạn")

  function setLC (){
    let times = new Date().getHours()
    if(times >5 && times <= 12)
      setGreeting("Good morning!")
    else if(times <= 18)
      setGreeting("good afternoon!")
    else
      setGreeting("good evening!")
  }
  return (
    <>
      <img class='logo' src={logo} alt="" />
      <p>{greeting}</p>
      <button onClick={setLC}>Cập nhật lời chào</button>
    </>
  )
}

export default App
