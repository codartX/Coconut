VERSION                                = 0

# Message Types
TYPE_REQUEST                           = 0
TYPE_RESPONSE                          = 1
TYPE_ALL = [
            TYPE_REQUEST,
            TYPE_RESPONSE,
            ]

# Method
METHOD_NEW                             = 0
METHOD_INFO                            = 1
METHOD_GET_INFO                        = 2
METHOD_CONFIG                          = 3
METHOD_UPGRADE                         = 4
METHOD_RELOAD                          = 5
METHOD_MESSAGE                         = 6
METHOD_AUTH                            = 7
METHOD_SET_POLICY                      = 8
METHOD_GET_POLICY                      = 9
METHOD_UNSET_POLICY                    = 10
METHOD_SUBSCRIBE                       = 11
METHOD_UNSUBSCRIBE                     = 12
METHOD_ALL = [
              METHOD_NEW,
              METHOD_INFO,
              METHOD_GET_INFO,
              METHOD_CONFIG,
              METHOD_UPGRADE,
              METHOD_RELOAD,
              METHOD_MESSAGE,
              METHOD_AUTH,
              METHOD_SET_POLICY,
              METHOD_GET_POLICY,
              METHOD_UNSET_POLICY,
              METHOD_SUBSCRIBE,
              METHOD_UNSUBSCRIBE,
              ]