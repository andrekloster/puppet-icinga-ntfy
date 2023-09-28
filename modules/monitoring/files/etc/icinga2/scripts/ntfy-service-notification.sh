#!/bin/sh
template=$(cat <<TEMPLATE
[${NOTIFICATIONTYPE} - ${HOSTDISPLAYNAME}: ${SERVICEDISPLAYNAME} is ${SERVICESTATE}]

Additional Info:
${SERVICEOUTPUT}
TEMPLATE
)

if [ ! -z "${NOTIFICATIONCOMMENT}" ]
then
    template="${template}

Comment by ${NOTIFICATIONAUTHORNAME}: ${NOTIFICATIONCOMMENT}"
fi

/usr/bin/curl -i --silent --output /dev/null \
    -d "${template}" "http://${NTFY_IP}/icinga"
