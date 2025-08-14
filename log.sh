# 查看实时日志
docker logs -f <container_id>

# 查看最近100行
docker logs --tail 100 <container_id>

# 带时间戳查看
docker logs -t <container_id>

# 导出日志到文件
docker logs <container_id> > container.log