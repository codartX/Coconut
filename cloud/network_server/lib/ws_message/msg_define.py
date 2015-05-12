VERSION                                = 0

# Message Types
TYPE_REQUEST                           = 0
TYPE_RESPONSE                          = 1
TYPE_ALL = [
            TYPE_REQUEST,
            TYPE_RESPONSE,
            ]

# Method
METHOD_NEW_DEVICE                      = 0
METHOD_GET_CONFIG                      = 1
METHOD_GET_RESOURCES                   = 2
METHOD_SET_RESOURCES                   = 3
METHOD_REPORT                          = 4
METHOD_UPGRADE                         = 5
METHOD_RELOAD                          = 6
METHOD_LOG                             = 7
METHOD_AUTH                            = 8
METHOD_SET_POLICY                      = 9
METHOD_GET_POLICY                      = 10
METHOD_UNSET_POLICY                    = 11
METHOD_SUBSCRIBE                       = 12
METHOD_UNSUBSCRIBE                     = 13
METHOD_ALL = [
              METHOD_NEW_DEVICE,
              METHOD_GET_CONFIG,
              METHOD_GET_RESOURCES,
              METHOD_SET_RESOURCES,
              METHOD_REPORT,
              METHOD_UPGRADE,
              METHOD_RELOAD,
              METHOD_LOG,
              METHOD_AUTH,
              METHOD_SET_POLICY,
              METHOD_GET_POLICY,
              METHOD_UNSET_POLICY,
              METHOD_SUBSCRIBE,
              METHOD_UNSUBSCRIBE,
              ]