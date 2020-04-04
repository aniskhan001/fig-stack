#! /bin/sh

# exit any on errors
set -e
set -o pipefail

echo "\n\n installing InfluxDB .."
helm upgrade --install influxdb influxdb -n monitoring

echo "\n\n installing Fluent Bit .."
helm upgrade --install fluent-bit fluent-bit -n monitoring

echo "\n\n installing Grafana .."
helm upgrade --install grafana grafana -n monitoring
