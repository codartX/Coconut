from jsonrpclib import Server
server = Server('http://localhost:9999/device_config')
result = server.DeviceConfig("abcd1234", "12345678999", {"ssid": "test_config"})
print result
