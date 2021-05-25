### Configuration
git config --global http.sslVerify false  
git config --global user.name "Ramkumaran Tamilarasi"  
git config --global user.email "ramkumaran.tamilarasi@test.com"

### Git
1. linear history
    * fast-forward
    * recursive (3-way)
	
2. divergent history
    * fast-forward (facilitated by rebase)
    * recursive (3-way)

3. history rewriting
    * interactive rebase
    
    
### Generate SSH Key Pairs for Git
1. Generate SSH Key Pair using windows's command ssh-keygen  
ssh-keygen -t rsa -b 2048 -C "ramkumaran.t@gmail.com"  
or  
Generate using puttygen.exe

2. Launch puttygen.exe and import the private key and generate PuTTY Private Key (.ppk) file 

3. Run PuTTY SSH Authentication Agent pageant.exe

4. Add .ppk files 
pageant.exe E:\apps\security\ramkumarant-github.com.ppk

**Note**: In Git Extension, Authentication Agent can be started and SSH Key Pair can be generated