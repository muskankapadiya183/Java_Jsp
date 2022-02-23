import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Reg from './component/reg';
import Login from './component/login';
import Delete from './component/delete';
import Featch from './component/Fetch';
import Navbar from './component/Navbar';

function App() {
  return (
    <>
    <Navbar />
        <Routes>
          <Route exact path="/" element={<Reg/>}></Route>
          <Route exact path="/login" element={<Login/>}></Route>
          <Route exact path="/delete" element={<Delete/>}></Route>
          <Route exact path="/fetch" element={<Featch/>}></Route>
        </Routes>
    </>
  );
}

export default App;
