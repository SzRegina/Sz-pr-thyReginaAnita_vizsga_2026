import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import heroImg from './assets/hero.png'
import './App.css'
import { AppProvider } from './context/AppContext'

function App() {
  const [count, setCount] = useState(0)

  return (
    <AppProvider>
      <header><h1>Vizsga</h1></header>
      <main><KategoriaLista/></main>
      <footer><p>SzR</p></footer>

    </AppProvider>
  );
}

export default App
