# xunxian.github.io
# Windows 用户和组管理 #

##  添加用户：  ##
net user gjb.yungujia.com userPassword /add </br>

## 添加用户到组：  ##
net localgroup "Remote Desktop Users" gjb.yungujia.com /add </br>
net localgroup "Performance Log Users" gjb.yungujia.com /add  </br>
net localgroup  IIS_IUSRS  gjb.yungujia.com /add </br>
net localgroup  Users  gjb.yungujia.com /add </br>

##  删除用户：  ##
输入net user demo /del 这个命令，我们就成功删除了这个账户。

# IIS 管理工具 appcmd 使用 #
## appcmd 启用 ##
Add directory  %windir%\system32\inetsrv\ to your PATH variable.
即: 在Windows Path变量里面添加:  ;%windir%\system32\inetsrv\

然后就可以使用appcmd 命令了

## 列出site 和更换site 的应用程序池  ##

appcmd.exe list site

appcmd.exe list apppool

appcmd.exe set app "Default Web Site/"     /applicationpool:"new_app_pool" </br>
APPCMD set app "估计宝OA/" /applicationPool:估计宝OA　 </br>

请参考:
https://technet.microsoft.com/en-us/library/cc771170(v=ws.10).aspx

## 修改应用程序池的标识  ##
APPCMD list apppool "估计宝OA" /text:* </br>
APPCMD set apppool "估计宝OA" /processModel.identityType:SpecificUser　 </br>
APPCMD set apppool "估计宝OA" /processModel.userName:gjb.yungujia.com　 </br>
APPCMD set apppool "估计宝OA" /processModel.password:new_password </br>
appcmd start apppool /apppool.name:估计宝OA </br>

appcmd.exe list apppool '估计宝OA' </br>
APPCMD list apppool "估计宝OA" /text:* </br>

## 修改site 的虚拟目录  ##
APPCMD list vdirs "估计宝OA/tempfiles"     /text:*

PS D:\> APPCMD list vdirs "估计宝OA/tempfiles"   /text:*  </br>
　VDIR  </br>
  　physicalPath:"\\File1\FTP_Test\Test_Tempfiles"  </br>
 　 path:"/tempfiles"  </br>
 　 APP.NAME:"估计宝OA/"  </br>
 　 VDIR.NAME:"估计宝OA/tempfiles"  </br>
 　 [virtualDirectory]  </br>
　　　path:"/tempfiles" </br>
　　　physicalPath:"\\File1\FTP_Test\Test_Tempfiles"  </br>
　　　userName:"testuser"  </br>
　　　password:"acutalPassword"  </br>
　　　logonMethod:"ClearText"  </br>
　　　allowSubDirConfig:"true"  </br>

APPCMD list vdirs 　 </br>
APPCMD set vdir "估计宝OA/tempfiles"  /userName:gjb.yungujia.com 　　 </br>
APPCMD set vdir "估计宝OA/tempfiles"  /password:acutalPassword  </br>

Lenny tips:  设完用户名和密码后，路径凭据自动变成specificUser模式(这个不像apppool那样，需要配置);   


Lenny tips:这个APPCMD list configxml导出中文有问题,找不到原因)
APPCMD list config /section:applicationPools /xml /config  >  aa.xml  /[name='估计宝OA']  
APPCMD list config /section:system.web/siteMap

