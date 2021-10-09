#from registry.fedoraproject.org/fedora-minimal
from registry.fedoraproject.org/fedora-minimal:34-aarch64
RUN microdnf -y update && microdnf -y install libgpiod-utils python3-libgpiod && microdnf clean all
COPY fancontrol.py /usr/local/bin/fancontrol.py
ENTRYPOINT /usr/local/bin/fancontrol.py 
