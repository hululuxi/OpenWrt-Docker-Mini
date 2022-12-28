# [OpenWrt-Docker-Mini](https://github.com/SuLingGG/OpenWrt-Docker-Mini)

[![GitHub Stars](https://img.shields.io/github/stars/SuLingGG/OpenWrt-Docker-Mini.svg?style=flat-square&label=Stars&logo=github)](https://github.com/SuLingGG/OpenWrt-Docker-Mini/stargazers)
[![GitHub Forks](https://img.shields.io/github/forks/SuLingGG/OpenWrt-Docker-Mini.svg?style=flat-square&label=Forks&logo=github)](https://github.com/SuLingGG/OpenWrt-Docker-Mini/fork)
[![Docker Stars](https://img.shields.io/docker/stars/sulinggg/openwrt-mini.svg?style=flat-square&label=Stars&logo=docker)](https://hub.docker.com/r/sulinggg/openwrt-mini)
[![Docker Pulls](https://img.shields.io/docker/pulls/sulinggg/openwrt-mini.svg?style=flat-square&label=Pulls&logo=docker&color=orange)](https://hub.docker.com/r/sulinggg/openwrt-mini)

Github: <https://github.com/SuLingGG/OpenWrt-Docker-Mini>

DockerHub: <https://hub.docker.com/r/sulinggg/openwrt-mini>

## 项目介绍

- 本项目是 [OpenWrt-Rpi-Docker](https://github.com/SuLingGG/OpenWrt-Rpi-Docker) 与 [OpenWrt-Mini](https://github.com/SuLingGG/OpenWrt-Mini) 的姊妹项目。

- 本项目基于 [immortalwrt/immortalwrt](https://github.com/immortalwrt/immortalwrt) openwrt-18.06-k5.4 分支，LuCI 版本为 LuCI 18.06。

- 本项目提供纯净版的 Docker OpenWrt 镜像，并预配置自建软件源，使用者可以在 OpenWrt 中通过 opkg 命令安装需要的软件包。

## 注意事项

- 本项目使用文档同 [OpenWrt-Mini](https://github.com/SuLingGG/OpenWrt-Mini) 项目的使用文档，在此不再赘述。
- Docker 镜像中软件包的集成情况与 [SuLingGG/OpenWrt-Mini](https://github.com/SuLingGG/OpenWrt-Mini) 项目中相同。
- 树莓派 2B 镜像同时适用于 2B/3B/3B+/4B 。 

- 若拉取镜像时不加任何标签，则将使用 latest 标签拉取镜像，`latest` 指向的镜像与树莓派 2B 镜像实际上为同一镜像。

- 如果你拥有 arm 或 arm64 架构 CPU 的设备，可以直接拉取标签为 `arm` 或 `arm64` 的镜像使用。
- 由于 Docker 容器与宿主机共享内核，所以 Docker 容器的内核特性与宿主机当前的内核特性相同。
- 某些软件包可能依赖一些特定的内核特性，所以我不保证 opkg 软件源中的所有软件包都可以正常使用。且因为上文所述原因，在 OpenWrt 中安装 kmod 是无效的，请在宿主机中提前载入相应的内核模块，例如:

```
modprobe ip6_udp_tunnel
modprobe ip6table_nat
modprobe pppoe
modprobe tun
modprobe udp_tunnel
modprobe xt_TPROXY
```

## 使用指南

镜像详细使用方法请参考博客文章:

「在 Docker 中运行 OpenWrt 旁路网关」

<https://mlapp.cn/376.html>

## 鸣谢

P3TERX/Actions-OpenWrt (本项目基于此项目):

<https://github.com/P3TERX/Actions-OpenWrt>

OpenWrt Source Repository:

<https://github.com/openwrt/openwrt/>

Lean's OpenWrt source:

<https://github.com/coolsnowwolf/lede>

CTCGFW's Team:

<https://github.com/project-openwrt>
