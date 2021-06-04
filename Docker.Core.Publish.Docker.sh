# 停止容器
docker stop apkcontainer
# 删除容器
docker rm apkcontainer
# 删除镜像
docker rmi lenceas/apkimg
# 切换目录
cd /root/Project/Docker.Core
# 发布项目
./Docker.Core.Publish.Linux.sh
# 进入目录
cd /root/Project/Docker.Core/PublishFiles
# 编译镜像
docker build -t lenceas/apkimg .
# 生成容器
docker run --name=apkcontainer -d -v /etc/localtime:/etc/localtime -it -p 8081:8081 lenceas/apkimg
# 启动容器
docker start apkcontainer
