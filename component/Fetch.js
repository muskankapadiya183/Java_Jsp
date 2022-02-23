import axios from "axios";
import { useEffect, useState } from "react";

function Featch() {
  
const [data1 , setData] = useState([]);

useEffect(() => {
  fetchusers();
} , [])

  //fetch user
  const fetchusers=()=>{
    const res = axios.get("/api/list").then((res)=>console.log("data",res));
   
      setData(res.data1);
    
  };

  return (
    <div>
      <h1>All Data</h1>
      <button onClick={fetchusers}>Fetch user</button>
      <table>
        <tr>
          <td>names</td>
        </tr>
        
{ data1 && data1.map((item , index) => {
  return (
    <tr>
    <td> hello </td> 
    <td> { item.username } </td> 
    </tr>
  );
})}


      </table>
    </div>
  );
}
export default Featch;