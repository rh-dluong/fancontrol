from registry.fedoraproject.org/fedora-minimal:34
RUN microdnf -y update && microdnf -y install python3-gpiozero gcc python3-devel && microdnf clean all
RUN  CFLAGS="-fcommon" pip install RPi.GPIO
COPY fancontrol.py /usr/local/bin/fancontrol.py
ENTRYPOINT /usr/local/bin/fancontrol.py &
