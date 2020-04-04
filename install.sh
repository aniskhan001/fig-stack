#! /bin/sh

# exit any on errors
set -e
set -o pipefail

echo "\n\n installing Fluent Bit .."
helm upgrade --install fig-fluent-bit fluent-bit -n monitoring --dry-run

echo "\n\n installing InfluxDB .."
helm upgrade --install fig-influxdb influxdb -n monitoring --dry-run

echo "\n\n installing Grafana .."
helm upgrade --install fig-grafana grafana -n monitoring --dry-run

