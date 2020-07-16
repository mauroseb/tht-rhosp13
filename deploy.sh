#!/bin/bash

time openstack overcloud deploy \
--templates \
-n /home/stack/templates/network_data.yaml \
-r /home/stack/templates/roles_data.yaml \
-e /home/stack/templates/container-image-prepare.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-isolation.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/network-environment.yaml \
-e /home/stack/templates/network-environment.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-ansible.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-mds.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/ceph-ansible/ceph-rgw.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/manila-cephfsganesha-config.yaml \
-e /usr/share/openstack-tripleo-heat-templates/environments/rhsm.yaml \
-e /home/stack/templates/rhsm.yaml \
-e /home/stack/templates/glance_nfs.yaml \
-e /home/stack/templates/node_info.yaml \
-e /home/stack/templates/common.yaml \
-e /home/stack/templates/ceph-hci-config.yaml
