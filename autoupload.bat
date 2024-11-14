@echo off
:: 设置项目所在目录
cd /d "C:\program-by-myself\AAAcode\Java\projPrac\编程派\learningCommunityHui"

:: 检查是否传入了提交消息
if "%1"=="-m" (
    :: 如果传入了 -m 参数，则使用该参数作为提交消息
    set commit_message=%2
) else (
    :: 如果没有传入 -m 参数，使用默认的提交消息
    set commit_message=Auto commit message
)

:: 检查是否有更改
git status

:: 添加所有更改的文件到暂存区
git add .

:: 提交更改
git commit -m "%commit_message%"

:: 推送更改到 GitHub 仓库
git push origin main

:: 显示操作完成
echo "Changes have been pushed to GitHub with commit message: %commit_message%"

:: 暂停脚本，以查看输出
pause
