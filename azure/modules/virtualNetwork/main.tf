resource "azapi_resource" "virtualNetwork" {
  type = "Microsoft.Network/virtualNetworks@2024-07-01"
  name = "vnet-jsp-001"
  parent_id = "string"
  location = "string"
  tags = {
    {customized property} = "string"
  }
  body = {
    extendedLocation = {
      name = "string"
      type = "string"
    }
    properties = {
      addressSpace = {
        addressPrefixes = [
          "string"
        ]
        ipamPoolPrefixAllocations = [
          {
            numberOfIpAddresses = "string"
            pool = {
              id = "string"
            }
          }
        ]
      }
      bgpCommunities = {
        virtualNetworkCommunity = "string"
      }
      ddosProtectionPlan = {
        id = "string"
      }
      dhcpOptions = {
        dnsServers = [
          "string"
        ]
      }
      enableDdosProtection = bool
      enableVmProtection = bool
      encryption = {
        enabled = bool
        enforcement = "string"
      }
      flowTimeoutInMinutes = int
      ipAllocations = [
        {
          id = "string"
        }
      ]
      privateEndpointVNetPolicies = "string"
      subnets = [
        {
          id = "string"
          name = "string"
          properties = {
            addressPrefix = "string"
            addressPrefixes = [
              "string"
            ]
            applicationGatewayIPConfigurations = [
              {
                id = "string"
                name = "string"
                properties = {
                  subnet = {
                    id = "string"
                  }
                }
              }
            ]
            defaultOutboundAccess = bool
            delegations = [
              {
                id = "string"
                name = "string"
                properties = {
                  serviceName = "string"
                }
                type = "string"
              }
            ]
            ipAllocations = [
              {
                id = "string"
              }
            ]
            ipamPoolPrefixAllocations = [
              {
                numberOfIpAddresses = "string"
                pool = {
                  id = "string"
                }
              }
            ]
            natGateway = {
              id = "string"
            }
            networkSecurityGroup = {
              id = "string"
              location = "string"
              properties = {
                flushConnection = bool
                securityRules = [
                  {
                    id = "string"
                    name = "string"
                    properties = {
                      access = "denied"
                      description = "string"
                      destinationAddressPrefix = "string"
                      destinationAddressPrefixes = [
                        "string"
                      ]
                      destinationApplicationSecurityGroups = [
                        {
                          id = "string"
                          location = "string"
                          properties = {
                          }
                          tags = {
                            {customized property} = "string"
                          }
                        }
                      ]
                      destinationPortRange = "string"
                      destinationPortRanges = [
                        "string"
                      ]
                      direction = "outbound"
                      priority = 100
                      protocol = "tcp"
                      sourceAddressPrefix = "string"
                      sourceAddressPrefixes = [
                        "string"
                      ]
                      sourceApplicationSecurityGroups = [
                        {
                          id = "string"
                          location = "string"
                          properties = {
                          }
                          tags = {
                            {customized property} = "string"
                          }
                        }
                      ]
                      sourcePortRange = "string"
                      sourcePortRanges = [
                        "string"
                      ]
                    }
                    type = "string"
                  }
                ]
              }
              tags = {
                {customized property} = "string"
              }
            }
            privateEndpointNetworkPolicies = "string"
            privateLinkServiceNetworkPolicies = "string"
            routeTable = {
              id = "string"
              location = "string"
              properties = {
                disableBgpRoutePropagation = bool
                routes = [
                  {
                    id = "string"
                    name = "string"
                    properties = {
                      addressPrefix = "string"
                      nextHopIpAddress = "string"
                      nextHopType = "none"
                    }
                    type = "string"
                  }
                ]
              }
              tags = {
                {customized property} = "string"
              }
            }
            serviceEndpointPolicies = [
              {
                id = "string"
                location = "string"
                properties = {
                  contextualServiceEndpointPolicies = [
                    "string"
                  ]
                  serviceAlias = "string"
                  serviceEndpointPolicyDefinitions = [
                    {
                      id = "string"
                      name = "string"
                      properties = {
                        description = "string"
                        service = "string"
                        serviceResources = [
                          "string"
                        ]
                      }
                      type = "string"
                    }
                  ]
                }
                tags = {
                  {customized property} = "string"
                }
              }
            ]
            serviceEndpoints = [
              {
                locations = [
                  "string"
                ]
                networkIdentifier = {
                  id = "string"
                }
                service = "string"
              }
            ]
            sharingScope = "string"
          }
          type = "string"
        }
      ]
      virtualNetworkPeerings = [
        {
          id = "string"
          name = "string"
          properties = {
            allowForwardedTraffic = bool
            allowGatewayTransit = bool
            allowVirtualNetworkAccess = bool
            doNotVerifyRemoteGateways = bool
            enableOnlyIPv6Peering = bool
            localAddressSpace = {
              addressPrefixes = [
                "string"
              ]
              ipamPoolPrefixAllocations = [
                {
                  numberOfIpAddresses = "string"
                  pool = {
                    id = "string"
                  }
                }
              ]
            }
            localSubnetNames = [
              "string"
            ]
            localVirtualNetworkAddressSpace = {
              addressPrefixes = [
                "string"
              ]
              ipamPoolPrefixAllocations = [
                {
                  numberOfIpAddresses = "string"
                  pool = {
                    id = "string"
                  }
                }
              ]
            }
            peerCompleteVnets = bool
            peeringState = "string"
            peeringSyncLevel = "string"
            remoteAddressSpace = {
              addressPrefixes = [
                "string"
              ]
              ipamPoolPrefixAllocations = [
                {
                  numberOfIpAddresses = "string"
                  pool = {
                    id = "string"
                  }
                }
              ]
            }
            remoteBgpCommunities = {
              virtualNetworkCommunity = "string"
            }
            remoteSubnetNames = [
              "string"
            ]
            remoteVirtualNetwork = {
              id = "string"
            }
            remoteVirtualNetworkAddressSpace = {
              addressPrefixes = [
                "string"
              ]
              ipamPoolPrefixAllocations = [
                {
                  numberOfIpAddresses = "string"
                  pool = {
                    id = "string"
                  }
                }
              ]
            }
            useRemoteGateways = bool
          }
          type = "string"
        }
      ]
    }
  }
}