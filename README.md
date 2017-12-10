# NEPI - Nobody Expects Polish Inquisition presents

## Goals

Prepare sensors based on NERVES to help automate flowers growing process. All data
can be checked in realtime on web app (sensors_hub) based on PHOENIX.

### Currently we are tracking:

* hydration of flowers - this data is aggregated by hour

* precipitation - which is aggregate by hour

* fan - we get info if it's on or off (our exotic plants need fan running every 10 minutes)

### Solution is splitted into two parts

Sensors - which holds code for all devices under NERVEs controll
and web part which uses phoenix to display live and historical data.

Sensors_hub - which aggregates historical data and displays live changes on web.
It is hosted on heroku and can be viewed at [`sensors hub`](https://sensors-hub.herokuapp.com).
