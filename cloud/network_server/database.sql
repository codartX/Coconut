Cassandra:

CREATE TABLE device_stats (device_id text,
                           object_name text,
                           value text,
                           timestamp timestamp,
                           PRIMARY KEY(device_id, object_name, timestamp));
