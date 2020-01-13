## About 
Raspberry Captive Portal autoconfig

- Wifi Access Point
- Redirect internet to portal

# Running

run this command
```
sudo ./install.sh
```

# How to use
- enable internet access
```
sudo iptables -t mangle -I internet -m mac --mac-source MAC-ADDRESS-HERE -j RETURN

```
- disable internet access
```
sudo iptables -t mangle -D internet -m mac --mac-source 60:ab:67:ce:1b:70 -j RETURN
```
- everytime you disable/enable internet access
```
sudo rmtrack MAC-ADDRESS-HERE
```
## License
The Portal is Licensed under the [MIT license](https://opensource.org/licenses/MIT).
