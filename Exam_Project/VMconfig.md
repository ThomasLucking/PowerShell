# VM Setup Guide — Projet Server PowerShell (Module 122)

---

## 1. Import the VM
- Open VirtualBox
- **File → Import Appliance → select SRV.ova**
- Click Next → Import, wait for it to finish

---

## 2. Configure Network
- Click the VM → **Settings → Network**
- Set Adapter 1 to **"NAT"** or **"Bridged Adapter"**
- Click OK

---

## 3. Start the VM and log in
- Use credentials from `READ_ME.txt`
- Open **PowerShell as Administrator**

---

## 4. Set Execution Policy
```powershell
Set-ExecutionPolicy RemoteSigned -Force
```

---

## 5. Install AD DS Role
```powershell
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
```
Wait for it to fully complete before moving on.

---

## 6. Promote to Domain Controller
```powershell
Install-ADDSForest -DomainName "solary.gg" -DomainNetbiosName "SOLARY" -InstallDns -Force
```
- Set DSRM password to `Admin123!`
- **⚠️ Write this password down!**
- Wait for the automatic reboot — don't touch anything

---

## 7. Verify AD is Working
After reboot, log back in and run:
```powershell
Get-ADDomain
```
Should return info about the `solary.gg` domain.

---

## 8. Install Guest Additions (Clipboard)
- VirtualBox menu → **Devices → Insert Guest Additions CD Image**
- Inside the VM open File Explorer → CD Drive → run `VBoxWindowsAdditions.exe`
- Follow the installer and reboot the VM
- VirtualBox menu → **Devices → Shared Clipboard → Bidirectional**

---

## 9. You're Ready!
Start working on the project:
- Create `Users_NomGroupe.csv`
- Write `Create_OU_NomGroupe.ps1`
- Write `Create_Users_NomGroupe.ps1`
- Write `Create_HomeDir_NomGroupe.ps1`# VM Setup Guide — Projet Server PowerShell (Module 122)

---

## 1. Import the VM
- Open VirtualBox
- **File → Import Appliance → select SRV.ova**
- Click Next → Import, wait for it to finish

---

## 2. Configure Network
- Click the VM → **Settings → Network**
- Set Adapter 1 to **"NAT"** or **"Bridged Adapter"**
- Click OK

---

## 3. Start the VM and log in
- Use credentials from `READ_ME.txt`
- Open **PowerShell as Administrator**

---

## 4. Set Execution Policy
```powershell
Set-ExecutionPolicy RemoteSigned -Force
```

---

## 5. Install AD DS Role
```powershell
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
```
Wait for it to fully complete before moving on.

---

## 6. Promote to Domain Controller
```powershell
Install-ADDSForest -DomainName "solary.gg" -DomainNetbiosName "SOLARY" -InstallDns -Force
```
- Set DSRM password to `Admin123!`
- **⚠️ Write this password down!**
- Wait for the automatic reboot — don't touch anything

---

## 7. Verify AD is Working
After reboot, log back in and run:
```powershell
Get-ADDomain
```
Should return info about the `solary.gg` domain.

---

## 8. Install Guest Additions (Clipboard)
- VirtualBox menu → **Devices → Insert Guest Additions CD Image**
- Inside the VM open File Explorer → CD Drive → run `VBoxWindowsAdditions.exe`
- Follow the installer and reboot the VM
- VirtualBox menu → **Devices → Shared Clipboard → Bidirectional**

---

## 9. You're Ready!
Start working on the project:
- Create `Users_NomGroupe.csv`
- Write `Create_OU_NomGroupe.ps1`
- Write `Create_Users_NomGroupe.ps1`
- Write `Create_HomeDir_NomGroupe.ps1`
