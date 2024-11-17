import mongoose from "mongoose";

export const connectDB = async () => {
  try {
    await mongoose.connect('mongodb://localhost/notes-db');
    console.log('[√] >>> DB is connected');
  } catch (err) {
    console.log(err)
  }
}
