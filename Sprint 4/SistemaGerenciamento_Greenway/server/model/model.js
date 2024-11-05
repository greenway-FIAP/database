const mongoose = require('mongoose');

var schema = new mongoose.Schema(
    {
        id_user_type:{
            type : mongoose.ObjectId,
            require: true
        },
        ds_email : {
            type : String,
            required: true,
            unique: true
        },
        ds_password : {
            type: String,
            required: true
        },
        dt_created_at : {
            type: Date,
            default: Date.now
        },
        dt_updated_at : {
            type: Date,
            default: null
        },
        dt_finished_at : {
            type: Date,
            default: null
        }
    },
    {
        versionKey: false, // Here You have to add.
        collection: 'T_GRW_USER'
    }
)

module.exports = mongoose.model('T_GRW_USER', schema);
