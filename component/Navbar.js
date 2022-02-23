import axios from "axios";
import { NavLink } from "react-router-dom";
function Navbar() {

   
    return (
        <div>
            <h1> <NavLink to="/"> Home </NavLink> </h1>
            <h1> <NavLink to="/login"> login </NavLink> </h1>
        </div>
    );
}
export default Navbar;