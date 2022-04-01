const mqtt = require('mqtt');
const { Client } = require('pg')
const moment = require("moment");


const postgres = new Client({
    user: 'postgres',
    host: 'localhost',
    database: 'postgres',
    password: 'postgres',
    port: 5432,
})


const TopicName = 'DataMgmt/FIN'

const client = mqtt.connect('mqtt://broker.hivemq.com');

client.on('connect', onConnect)
client.on('message', onMessage)

async function onConnect() {
    console.log("Connected to MQTT");
    client.subscribe(TopicName, onSubscribe);
    await postgres.connect()
}

function onSubscribe(err)
{
    console.log("Subscribed to " + TopicName);
    if (err) {console.log(err);}
}

function checkData(data) {
    if(!moment(data.zeit, 'DD.MM.YYYY HH:mm:ss.SSS',true).isValid()){
        throw new Error("Date has wrong format: " + data.zeit)
    }
}

async function onMessage(topic, message) {
    try {
        const data = JSON.parse(message)

        checkData(data)

        console.log("Incoming:")
        console.log(data)
        const command = `INSERT INTO staging.messung (payload) VALUES ('${message}');`;

        console.log(command)
        console.log("------------------------")

        await postgres.query(command)
    }catch (e) {
        console.log("Error:")
        console.log(e)
        console.log("Message: " + message)
        console.log("------------------------")
    }
}
