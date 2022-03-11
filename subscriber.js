const mqtt = require('mqtt');
const { Client } = require('pg')


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

async function onMessage(topic, message) {
    try {
        const data = JSON.parse(message)

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
