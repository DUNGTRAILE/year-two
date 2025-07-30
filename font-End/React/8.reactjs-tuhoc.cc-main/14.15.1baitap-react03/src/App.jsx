import {useState} from "react";

//bài tập 03 khoá học react js tại https://tuhoc.cc
export default function App() {
  const [upP,setUpP] = useState(false)

  function setLai(){
    setUpP((pre) => !pre)
  }
  return (
    <div className="container">
      <p style={upP?{ color: 'red', fontSize: '50px' }: undefined} >Click vào em!</p>
      <button onClick={setLai}>Toggle btn</button>
    </div>
  );
}
