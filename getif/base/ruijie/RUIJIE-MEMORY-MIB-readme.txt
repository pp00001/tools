/*
 *
 * 作者：林双凤  日期：2009-07-08     
 * 修订者: 林双凤  修订日期: 2010-01-14
 * -------------------------------------
 */ 
本MIB遵循的标准：
    本MIB属于我司定义的私有MIB。

在本项目中支持哪些版本：
    在本项目（10.4项目）中，10.4(1)以及之后的版本都支持。

在这些版本中支持哪些产品：
    10.4(1)以及之后的版本，其对应的所有产品都支持。

MIB对象实现程度：
    1）以下变量S26,S26E,S29(marvell芯片方案),S5750,S7800支持，其它设备不支持
        ruijieNodeMemoryPoolTable
        ruijieNodeMemoryPoolEntry
        ruijieNodeMemoryPoolIndex  
        ruijieNodeMemoryPoolName    
        ruijieNodeMemoryPoolCurrentUtilization   
        ruijieNodeMemoryPoolLowestUtilization  
        ruijieNodeMemoryPoolLargestUtilization  
        ruijieNodeMemoryPoolSize   
        ruijieNodeMemoryPoolUsed    
        ruijieNodeMemoryPoolFree   
        ruijieNodeMemoryPoolWarning
        ruijieNodeMemoryPoolCritical
        
    2）以下变量不支持
        ruijieMemoryMIBConformance
        ruijieMemoryMIBCompliances
        ruijieMemoryMIBGroups

    3）其他的实现与MIB定义文件一致。
