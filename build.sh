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

log='测试'
username='Luobata'
password='ychshe123'
project='copy'
file='./'$project'/test/img'
src='./'$project'/img/*'

#测试git地址 TODO 项目名称提取 路径管理
mkdir $project
git clone https://$username:$password@github.com/Luobata/test.git $project

mv $file tmp
mkdir $file
rm -rf tmp
cp -fr $src $file && cd $file

git config credential.helper store
git add .
git commit -a -m $log
git push -f
