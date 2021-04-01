1. 每次运行前，会尝试在 shardingsphere 的 repository 中获取最新的 SQL, 本地的初始化 SQL 如果不是最新的就尝试更新
3. 执行 startup.sh 启动一个初始化了 manual_schema.sql 的 MySQL