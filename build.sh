#点击Jenkins发布脚本 拷贝指定项目目录到指定项目中
#clone
#rm && cp目录
#配置用户信息
#git status
#git commit -m git add -m
#git pull git push -f

#制作软连接 node git
#ln - s /opt/apps_install/node-v0.10.25/bin/node node
#ln - s /usr/bin/git git

file='./test/img'
src='./img/*'

#测试git地址 TODO 项目名称提取 路径管理
#git clone https://github.com/Luobata/test.git

cp -fr $src $file && cd $file

status=`git status`
echo ${status}
