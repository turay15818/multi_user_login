import User from "../models/UserModel.js";

export const verifyUser = async (req, res, next) =>{
    if(!req.session.userId){
        return res.status(401).json({msg: "Please login to your user account!"});
    }
    const user = await User.findOne({
        where: {
            uid: req.session.userId
        }
    });
    if(!user) return res.status(404).json({msg: "User Account does not exit"});
    req.userId = user.id;
    req.role = user.role; 
    next();
}

export const adminOnly = async (req, res, next) =>{
    const user = await User.findOne({
        where: {
            uid: req.session.userId
        }
    });
    if(!user) return res.status(404).json({msg: "User does not exit"});
    if(user.role !== "admin") return res.status(403).json({msg: "ops! Access Forbidden"});
    next();
}