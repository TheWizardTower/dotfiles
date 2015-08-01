FROM fedora
MAINTAINER Adam McCullough <merlinfmct87@gmail.com>

RUN dnf install --assumeyes \
    hostname                \
    puppet

ADD ./host.pp /root/host.pp

WORKDIR /root

# --test is an alias for --verbose --detailed-exitcodes, and enables "show_diff".
# --detailed-exitcodes means that 0 is "nothing happened", 2 is "Changes were made",
# 4 is "Errors occured, and 6 is "Changes were made, and errors occured.
# Since 2 is the result we expect, check that the return code of the apply is 2.
RUN puppet parser validate *.pp &&\
    puppet apply --test *.pp; \
    test $? -eq 2
