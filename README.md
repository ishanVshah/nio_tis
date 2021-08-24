```text
SPDX-License-Identifier: Apache-2.0
Copyright (c) 2021 Nabstract.io
```

# **Nabstract.io Overview**
Nabstract.io building up set of network applications that provides the required abstraction layer for developers, application platform owners & MEC / Edge Cloud companies to interface with Mobile Network Providers. Its Nabstract NEF product portfolio enables intelligent policy driven environment for Vertical Industries to operate as service partners to enable & monetize B2B2X business models with Mobile Network Providers.

# **nio_tis Application Description**
NIO_TIS, is a traffic influence 5G Network application. It is part of the Nabstract NEF Portfolio. 
As the CSP/Mobile Network Providers collaborate with different hyper scaler to partner to build the EDGE (MEC) Cloud network, the need to automate dynamic policy environment triggered by a context of device, platform or edge application will get complex & demanding on the MNO. The Nabstract NEF provides a single & independent definition point between application platforms and 5G Core deployment to address this issue. The Nabstract NEF with its portfolio of network applications& APIs address this issue, provides a common, unified network exposure platform for Mobile Network as a critical building block in the B2B2X business model and partnerships.

# **OpenNESS Building Blocks**
NIO_TIS leverages Intel OpenNESS Microservices and provides a 5G AF enabler Portal and Rule Engine to define traffic influence rules.

## **Pre Requisites – Resources Required**

This document assumes that the Intel openness was installed through the openness playbook. Single Node or Multiple Node deployment.

| **OpenNESS IDO**           |                                |
|----------------------------|--------------------------------|
| version                    | 21.03.05		                    | 
| flavor                     | CERA Core Control Plane Flavor |  

**Note: The other components may need IDO distribution.**

| **Resource Information**           |                      |
|------------------------------------|----------------------|
| Helm                  | Video-Analytics		  | 
| Host OS                 | 8                    |  
| Compute* (vCores)                     | 16 GB                |  
| RAM 				                   | 200  GB              |  
| Storage                            | CentOS 7.6.1810      | 
| CPU
  


## **Where to Purchase**
Contact nishant@deepsightlabs.com


## Pre Requisites - Installing OpenNESS
|**Configuration**                   |                       |
|  ----------------------------------|-----------------------|
| OpenNESS Version                   | 20.12.02		         |
| Flavor Used 					     | Minimal				 |
| Distribution						 | OpenSource    	     |


Follow below link to setup controller and edge-node for installing OpenNESS.

https://github.com/open-ness/specs/blob/openness-20.12.02/doc/getting-started/network-edge/controller-edge-node-setup.md

* Go to openness-experience-kits/ directory and comment out the grub role (role: machine_setup/grub) in the **network_edge.yml** file.
* Run the deployment script as ./deploy_ne.sh 

## Loading Docker Images
docker image load -i dsal_openvino_v2.tar.gz

## Installing SuperSecure Application using helm

Run the following commands to deploy  through helm:

`helm install supersecure ./`

 Sample Output would look like:

> `NAME: supersecure`
>
> `LAST DEPLOYED:`
>
> `NAMESPACE: default`
>
> `STATUS: deployed`
>
> `REVISION: 1`
>
> `TEST SUITE: None`
>
> `NOTES:`
>
> `# SPDX-License-Identifier: Apache-2.0`
> 
> `# Copyright (c) 2021 DeepSight AI Labs`
> 
> `deepsight-supersecure was installed.`
> 
> `Your release is named supersecure.`
> 
> `To learn more about the release, try:`
> 
> `$ helm status supersecure`
> 
> `$ helm get supersecure`


## Uninstall SuperSecure application
To uninstall application run below command:
    
`helm uninstall supersecure`

## Testing Steps
For further instructions about steps for testing, contact Nishant (nishant@deepsightlabs.com)

## **Related material**
* https://deepsightlabs.com/

