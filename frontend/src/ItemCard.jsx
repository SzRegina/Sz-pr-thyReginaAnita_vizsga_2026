import { useContext } from "react";
import { AppContext } from "./context/AppContext";

function ItemCard({esemeny}){
    const {deleteEsemeny} = useContext(AppContext);

    <div className="button-row">
        <button onClick={() => deleteEsemeny(esemeny.id)}>X</button>


    </div>


}
export default ItemCard;