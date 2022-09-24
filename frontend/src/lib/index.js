import { Axios } from "../config";
const getMessage = (error)=>{

    let message = error.message;
    if(error.response){
        message = error.response.data;
    }
    return message;
};

export const loginUser = async(body)=>{
    try{
        const {data} = await Axios.post("/login", body);
        return{error: false, message: data};
    }catch (error){
        const message = getMessage(error);
        return {error: true, message};
    }
}