import ItemCard from "./ItemCard";
import ItemForm from "/.ItemForm";

function KategoriaBlock({kategoria}){
    return(
        <section className="kategoria_block"><h2>
            {kategoria.kategoria_nev}
        </h2>
        <ItemForm kategoriaId={kategoria.id}/>
            <div className="esemeny_lista">
                {kategoria.esemenies?.map((esemeny) =>(
                    <ItemCard key ={esemeny.id} esemeny={esemeny}/>
                ))}
            </div>
            
        </section>
    );

}

export default KategoriaBlock;