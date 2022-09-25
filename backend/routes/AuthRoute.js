import express from "express";
import {Login, logOut, Me} from "../controllers/Auth.js";
import rateLimit from "express-rate-limit";

const loginLimiter = rateLimit({
  windowMs: 1 * 60 * 60 * 1000, // 1 hour
  max: 3, // Limit each IP to 100 requests per `window` (here, per 15 minutes)
  standardHeaders: true, // Return rate limit info in the `RateLimit-*` headers
  legacyHeaders: false, // Disable the `X-RateLimit-*` headers
});

const router = express.Router();

router.get('/me', Me);
router.post('/login',loginLimiter, Login);
router.delete('/logout', logOut);

export default router;
