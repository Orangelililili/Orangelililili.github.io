---
layout: archive
title: "个人简历"
permalink: /cv/
author_profile: true
redirect_from:
  - /resume
---

{% include base_path %}

## 📄 PDF版本下载
**简历PDF版本**: [resume.pdf](/files/resume.pdf)

## 教育经历
---
* **2024年至今**：硕士研究生在读，控制科学与工程专业
  * 哈尔滨工业大学
  * 海洋无人系统自主控制与协同技术重点实验室
  * 研究方向：无人船无人机跨域协同路径规划
* **2020年至2024年**：本科，自动化专业
  * 中国计量大学
  * 量新学院（荣誉学院）
  * 研究方向：大数据分析，故障诊断，工业过程建模

## 研究经历
---
* **2023年至今**：硕士研究生
  * 哈尔滨工业大学
  * 海洋无人系统自主控制与协同技术重点实验室
  * 主要研究方向：无人船无人机跨域协同路径规划
  * 导师：黄海滨

## 技术技能
---
* **编程语言**
  * C++17/20：熟练掌握现代C++特性，用于系统编程和算法实现
  * Python：用于数据分析、机器学习和脚本开发
  * Shell：Linux系统管理和自动化脚本
  * SQL：数据库设计和查询优化

* **系统开发**
  * Linux系统编程：多线程、内存管理、进程间通信
  * 网络编程：Reactor模式、epoll、gRPC、DPDK用户态网络
  * 存储系统：Redis/MySQL/FastDFS、SPDK用户态存储
  * 高性能I/O：零拷贝技术、用户态协议栈

* **工程实践**
  * Docker容器化：微服务部署和编排
  * CI/CD：自动化构建和部署流程
  * Nginx：反向代理和负载均衡
  * 分布式架构设计：微服务、缓存、消息队列

* **算法基础**
  * LeetCode 500+ 题，数据结构与算法功底扎实
  * 路径规划算法：A*、RRT、Dijkstra等
  * 多智能体协同控制算法

* **科研/写作**
  * CSDN技术博客50+篇，累计10w+阅读，粉丝1000+
  * 技术表达能力：能够将复杂技术概念清晰表达

## 项目经历
---
* ** 分布式云存储系统（个人主导项目）**
  * 技术栈：C++17、Linux、Reactor网络模型、Redis、MySQL、FastDFS、gRPC、Nginx、Docker
  * 独立设计并实现了一个支持用户认证、文件上传下载、分布式缓存与持久化存储的云存储平台
  * 网络层采用自研Reactor模型+gRPC RPC框架，支持高并发请求处理
  * 缓存层引入Redis，结合MySQL与FastDFS作为冷热存储分层
  * 集成Nginx进行反向代理与负载均衡，支持Docker容器化部署
  * 性能优化成果：在100并发下，文件上传/下载平均延迟较初版降低45%，QPS提升3倍

* **⚡ 高性能I/O优化实验（DPDK + SPDK）**
  * 技术栈：DPDK、SPDK、用户态协议栈、零拷贝I/O、性能测试
  * 基于DPDK搭建用户态网络协议栈，绕过内核协议栈实现高速收发包
  * 使用SPDK实现用户态存储I/O，构建高性能日志落盘模块
  * 性能对比结果：网络延迟降低~30%，吞吐提升约2.2倍；存储写入延迟降低~40%，持续写入场景吞吐提升1.8倍
  * 项目成果可作为云存储系统的优化模块，展示了在金融/高频交易中低延迟系统设计能力

## 学术成果
---
  <ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
## 学术报告
---
  <ul>{% for post in site.talks reversed %}
    {% include archive-single-talk-cv.html  %}
  {% endfor %}</ul>
  
## 教学经历
---
  <ul>{% for post in site.teaching reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>
  
## 个人优势
---
* **扎实的技术功底**：C++/Linux后端功底深厚，兼具系统级优化与分布式架构经验
* **开源贡献**：GitHub主页长期活跃，项目持续迭代；CSDN技术博客粉丝数破千，具备良好技术表达能力
* **学习与自驱力**：自主完成高性能系统类项目，从调研→架构设计→编码实现→Docker部署，全流程独立完成
* **工程/算法兼备**：既能写高性能后端系统，又有扎实的算法基础，适合金融交易系统高要求岗位
* **研究方向相关**：专注于无人船无人机跨域协同路径规划，具备多智能体系统控制经验

## 在线资源
---
* **GitHub**: [https://github.com/Orangelililili](https://github.com/Orangelililili)
* **CSDN博客**: [https://blog.csdn.net/weixin_52423494](https://blog.csdn.net/weixin_52423494?spm=1000.2115.3001.5343)

