# Accessing Server for NGS hands-on lab (ProgrammingLaboratory for Bioinformatics 2020-21)

Brief tutorial on how to access and Infomics lab server and transfer files from local computers to the server.

### Prerequisites:

- Valid VPN access (UniVR GIA + passwordrequired) Further details at [https://www.univr.it/en/our-services/-/servizi/ssl-vpn-secure-remote-access](https://www.univr.it/en/our-services/-/servizi/ssl-vpn-secure-remote-access).

- Unix bash/shell

- ```ssh``` (it should be already available in every UNIX OS)

## Important Notes

The server access will remain available only during the hands-on lab session. Thus, it will not be possible to access it outside the lab sessions. 

**Be very careful using the server**. If you have doubts, **ask before doing anything thatcould cause important issues!!!** 

## 1.How can I access the server?

Connect to the UniVR network via VPN. 

Open your Unix bash/shell and type ```ssh``` followed by the server’s IP address:

```ssh wonderful_server@123.45.67.89```

Then type the password.

**NB** Closing the current bash/shell will close the connection to the server. 

**NB** IP address and password will be given during the hands-on lab.

## 2.How can I upload files and directorie sfrom my computer to the server?

Open a new bash/shell (do not connect to the server!!).

To upload filesfrom your local computer to the server,type:

```scp my_fancy_file.txt wonderful_server@123.45.67.89:/path/to/some/location/in/server/```

You will be required to enter the password. 

To upload directories from your local computer to the server, type:

```scp -r my_fancy_directory wonderful_server@123.45.67.89:/path/to/some/location/in/server```

You will be required to enter the password.

## 3.How can I download files and directories from the server to my computer?

Open a new bash/shell (do not connect to the server!!).

To download files from the server to your local computer, type:

```scp wonderful_server@123.45.67.89:/path/to/file/awesome_file.txt ./```

You will be required to enter the password.

To download directories from the server to your local computer, type:

```scp -r wonderful_server@123.45.67.89:/path/to/directory/unbelievable_directory.txt ./```

You will be required to enter the password.

## 4.How can I see the currently running processes, memory usage, etc.?

Take a bash/shell currently connected to the server. 

To see memory usage, currently running processes, type:

```htop```

To exit ```htop```, type:

```q```
