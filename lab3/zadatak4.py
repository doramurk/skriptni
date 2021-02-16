import urllib.request
import re
import sys


adresa = sys.argv[1]
stranica = urllib.request.urlopen(adresa)
mybytes = stranica.read()
mystr = mybytes.decode("utf8")
print(mystr)

links = re.findall('href="[^"]+"', mystr)
print("Linkovi:")
for i in range(len(links)):
    print("-", links[i][6:-1])
    #continue

hostovi = {}
for link in links:
    if "https://" in link:
        host = link[14:-1]
        if "www." in host:
            host = host[4:]
        index = host.find("/")
        host = host[0:index]
        if host not in hostovi.keys():
            hostovi[host] = 1
        else:
            hostovi[host] += 1

print("\nHostovi:")
for host in hostovi.keys():
    print("-->", host, "se pojavljuje", hostovi[host], "puta")
    #continue

print("\ne-mailovi:")
emailovi = re.findall("[a-z0-9]+@[a-z0-9]+\.[a-z0-9]+", mystr)
for email in emailovi:
    print("--->", email)
    #continue

slike_linkovi = re.findall('<img src="[^"]+"[^>]+>', mystr)
print("\nBroj linkova na slike: ", len(slike_linkovi))