import mongoose from "mongoose";

const noteSchema = new mongoose.Schema({
  title: {
    type: string,
    required: true,
    trim: true,
  },
  description: {
    type: string,
    required: true,
    trim: true,
  },
});

export default mongoose.model('Note', noteSchema);
