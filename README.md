# NEPI - Nobody Expects Polish Inquisition presents

## Goals

Prepare sensors based on NERVES to help automate flowers growing process. All data
can be checked in realtime on web app (sensors_hub) based on PHOENIX.

### Currently we are tracking:

* hydration of flowers - this data is aggregated by day
and we are checking if plants were hydrated three times a day (We are growing very
exotic type).

* precipitation - which is aggregate by day and we are displaying percentage overview.

* people presence - we don't want any strangers around our plantation.

### Solution is splitted into two parts

Sensors - which holds code for all devices under NERVEs controll
and web part which uses phoenix to display live and historical data.

Sensors_hub - which aggregates historical data and displays live changes on web.
It is hosted on heroku and can be viewed at [`sensors hub`](https://sensors-hub.herokuapp.com).