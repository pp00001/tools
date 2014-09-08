/*
 *
 * 作者：陈锋  日期：2009-07-08  
 * 修订者: 陈锋  修订日期: 2009-07-08
 * -------------------------------------
 */ 
本MIB遵循的标准：
本MIB属于我司定义的私有MIB。

在本项目中支持哪些版本：
DOT1X部分，在本项目（10.4项目）中，10.4(1)以及之后的版本都支持。
AAA部分，在本项目（10.4项目）中，10.4(1)以及之后的版本都支持。

在这些版本中支持哪些产品：
DOT1X实现的部分，10.4(1)以及之后的版本，其对应的所有交换机都支持；
AAA部分: 10.4(1)版本仅路由器产品支持，10.4(1)版本之后对应的所有产品都支持；

MIB对象实现程度：
DOT1X实现的部分:
MIB表格对象ruijieDot1xAuthObjects中的元素ruijieDot1xAuthStatus未实现，
对象ruijieDot1xAuthObjectsStatsTable中的元素ruijieDot1xAuthObjectsEapolRuijieFramesRx和ruijieDot1xAccountStatus未实现，
对象ruijieAuthIfTable中的元素ruijieAuthIf和ruijieAuthIfStatus未实现，
其他的实现与MIB定义文件一致。
AAA实现部分:
各节点均已实现.
