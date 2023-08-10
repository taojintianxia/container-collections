# 容器化启动 Jenkins
> 如果是迁移另一个 Jenkins 的任务的话，将原 Jenkins 的 home 目录拷贝到 $HOME/Incubator/docker/jenkins
1. 进入 bin 目录执行以下命令
```shell
sh startup.sh
```
2. 访问 http://localhost:8080
3. 根据提示获取初始密码
4. 创建 admin 账户