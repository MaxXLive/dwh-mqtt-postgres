const mqtt = require('mqtt');

const TopicName = 'DataMgmt/FIN'
const interval = 5000;
const ortId = 1
const fin = "WBAAL31050AY31337"

const client = mqtt.connect('mqtt://broker.hivemq.com');


setInterval(loop, interval);
loop()

function loop() {
    console.log("Sending: ")

    const data = {
        "fin": fin,
        "zeit": getTimestamp(),
        "geschwindigkeit": getSpeed(0, 200),
        "ort": ortId
    }

    console.log(data)
    console.log("------------------------")

    client.publish(TopicName, JSON.stringify(data));
}

function getTimestamp() {
    let date_ob = new Date();

    let date = ("0" + date_ob.getDate()).slice(-2);
    let month = ("0" + (date_ob.getMonth() + 1)).slice(-2);
    let year = date_ob.getFullYear();
    let hours = date_ob.getHours();
    let minutes = formatTwoDigit(date_ob.getMinutes());
    let seconds = formatTwoDigit(date_ob.getSeconds());
    let milliseconds = date_ob.getMilliseconds()

    return date + "." + month + "." + year + " " + hours + ":" + minutes + ":" + seconds + "." + milliseconds
}

function getSpeed(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
}

function formatTwoDigit(num) {
    if(num < 10)
        return "0" + num
    else
        return num
}
