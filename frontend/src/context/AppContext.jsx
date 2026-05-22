import {createContext, useEffect, useState} from "react";
import api from "../api/api";

export const AppContext = createContext();

export function AppProvider({children}){
    const[kategorias, setKategorias] = useState([]);
    const[esemenies, setEsemenies] = useState([]);
    const[loading, setLoading] = useState([]);
    const[error, setError] = useState([]);

    const [newEsemeny, setNewEsemeny ] = useState({
        "kategoria_id" : "",
        "esemeny_nev": "",
        "leiras": "",
        "datum": "",
        "resztvevok": "",
        "ar": "",
        "kepURL": "",
    });

    async function getKategorias(){
        try{
            setLoading(true);
            const response = await api.get("/kategorias");
            setKategorias(response.data);
        }catch (err){
            setError("Nem sikerült elérni a kategóriákat!");
        }finally{

            setLoading(false);
        }
        }
    async function getEsemenies(){
        try{
            const response = await api.get("/esemenies");
            setEsemenies(response.data);
        }catch (err){
            setError("nem sikerült lekérni az elemeket!");
        }


    }
    async function addEsemeny(itemData){
        await api.post("/esemenies", itemData);
        await getKategorias();
        await getEsemenies();

    }
    async function deleteEsemeny(id){
        await api.delete("/esemenies/${id}");
        await getKategorias();
        await getEsemenies();

    }
    useEffect(() =>{
        getKategorias();
        getEsemenies();



    }, []);

    return(
        <AppContext.Provider
        value={{
            kategorias,
            esemenies,
            loading,
            error,
            newEsemeny,
            setNewEsemeny,
            getKategorias,
            getEsemenies,
            addEsemeny,
            deleteEsemeny,

        }}
        >
            {children}
            </AppContext.Provider>

    );


}