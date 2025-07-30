// import {useState} from "react";

import { useState } from "react";

// Don't change the component name "App"
export default function App() {
  const [isAlertVisible,setIsAlertVisible] = useState();
  const [isActivate,setIsActivate] = useState();

  let dataa = <button onClick={(setAV)} className="action-btn">Activate</button>

  function setAV() {
    setIsAlertVisible('true')
  }

  function setAV1() {
    setIsAlertVisible('')
  }
  function setAV2() {
    setIsActivate('true')
  }
  function setAV3() {
    setIsActivate('')
  }
  if(isAlertVisible && !isActivate){
    dataa = (
      <div className="alert-box">
          <h2>Warning!</h2>
          <p>Are you sure you want to activate this mode?</p>
          <button onClick={(setAV2)} className="confirm-btn">Confirm</button>
          <button onClick={(setAV1)} className="cancel-btn">Cancel</button>
        </div>
    )
  }

  if(isActivate){
    dataa = (
      <>
      <h3 className="success-message">Mode Activated!</h3>
      <button onClick={() => {setAV1();setAV3()}} className="cancel-btn">Cancel</button>
      </>
    )
  }
  return (
    <>
      {dataa}

      {/* {<h3 className="success-message">Mode Activated!</h3>} */}
    </>
  );
}
