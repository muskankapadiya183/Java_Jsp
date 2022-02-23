import axios from "axios";

function Delete() {

    var deletename = "";
    const deleteuser = () => {
            axios.delete("/api/delete/" + deletename).then((res) => console.log(res.data));
    };

    return (
        <div>
        <input placeholder="username" onChange={ (e) => (deletename  = e.target.value) } />
        <button type="Submit" onClick={deleteuser}>Delete</button>
        </div>
    );
}
export default Delete;