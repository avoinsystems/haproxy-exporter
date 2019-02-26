FROM quay.io/prometheus/haproxy-exporter:v0.10.0

ADD entrypoint_eval.sh /bin/entrypoint_eval.sh

ENV URI_SCHEME http
ENV URI_USER stats
ENV URI_PATH ";csv"
ENV URI_PORT 1000

ENTRYPOINT ["/bin/entrypoint_eval.sh"]
