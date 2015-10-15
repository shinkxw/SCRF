#!/usr/bin/env ruby -w
# encoding: UTF-8
#用来保证一个对象在多线程中同时只被一个线程调用
需要 'monitor'
R监视器混入 = MonitorMixin
R监视器 = Monitor