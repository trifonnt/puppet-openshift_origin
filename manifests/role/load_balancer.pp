# Copyright 2014 Red Hat, Inc., All rights reserved.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#
class openshift_origin::role::load_balancer inherits openshift_origin::role {
  include openshift_origin::load_balancer
  include openshift_origin::register_dns

  anchor { 'openshift_origin::load_balancer_role_begin': } ->
  Class['openshift_origin::load_balancer'] ->
  anchor { 'openshift_origin::load_balancer_role_end': } ->
  Class['openshift_origin::register_dns']
}
