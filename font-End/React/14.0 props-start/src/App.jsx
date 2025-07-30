import { data } from "../data.js"
import Header from "./comPonents/Header/Header.jsx";
import MenuContent from "./comPonents/MenuContent/MenuContent.jsx"
import TabButton from "./comPonents/TabButton.jsx";


function App() {
  function clickom() {
    handleClick('Componentff')
  }
  function handleClick(selectButton) {
    alert(`${selectButton} da duoc cho!`)
  }
  // console.log({...data[0]})
  return (
    <>
      <Header />
      <main>
        <section id="core-concepts">
          <h2>Khái niệm chính trong React</h2>
          <ul>
            <MenuContent {...data[0]} />
            <MenuContent {...data[1]} />
            <MenuContent {...data[2]} />
            <MenuContent {...data[3]} />
          </ul>
        </section>
        <section id="examples">
          <h1>Examples</h1>
          <menu>
            <TabButton onSelect={clickom}>Component</TabButton>
            <TabButton onSelect={() => { handleClick('JSX') }}>JSX</TabButton>
            <TabButton onSelect={() => { handleClick('Props') }}>Props</TabButton>
            <TabButton onSelect={() => { handleClick('State') }}>State</TabButton>
          </menu>
        </section>
      </main>
    </>
  );
}

export default App;
