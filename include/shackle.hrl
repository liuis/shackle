-define(APP, shackle).
-define(CHILD(Name, Mod), {Name, {shackle_server, start_link, [Name, Mod]}, permanent, 5000, worker, [Mod]}).
-define(DEFAULT_BACKLOG_SIZE, 1024).
-define(DEFAULT_CONNECT_RETRY, 500).
-define(DEFAULT_POOL_SIZE, 16).
-define(DEFAULT_SEND_TIMEOUT, 50).
-define(ETS_TABLE_BACKLOG, shackle_backlog).
-define(ETS_TABLE_CACHE, shackle_cache).
-define(ETS_TABLE_QUEUE, shackle_queue).
-define(LOOKUP(Key, List), ?LOOKUP(Key, List, undefined)).
-define(LOOKUP(Key, List, Default), shackle_utils:lookup(Key, List, Default)).
-define(SUPERVISOR, shackle_sup).

-ifdef(TEST).
-define(IF_DEF_TEST, fun (A, _) -> A end).
-else.
-define(IF_DEF_TEST, fun (_, B) -> B end).
-endif.
