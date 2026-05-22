import { useContext } from "react";
import { AppContext } from "./context/AppContext";
import KategoriaBlock from "./KategoriaBlock";


function KategoriaLista(){
    const {kategorias, loading, error} = useContext(AppContext);

    if(loading){
        return <p>Betöltés...</p>



    }
    if (error){
        return <p className="error">{error}</p>;



    }
    return(
        <div className="kategoria_container">
            {kategorias.map((kategoria)=>(
                <KategoriaBlock key ={kategoria.id} kategoria={kategoria} />
            ))}
            </div>

    );


}
export default KategoriaLista;