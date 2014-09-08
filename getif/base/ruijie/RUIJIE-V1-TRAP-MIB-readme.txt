/*
 *
 * 作者：林嘉  日期：2009-09-29
 * -------------------------------------
 */ 
本MIB遵循的标准：
本MIB属于我司定义的私有MIB。

在本项目中支持哪些版本：
在本项目（10.4项目）中，10.4(1)和10.4(2)版本支持。

在这些版本中支持哪些产品：
10.4(1)和10.4(2)其对应的所有产品支持；

MIB对象实现程度：
私有trap id                                                                    是否实现
#define  ID_SYS_HARD_CHANGE_DETECTED    1    /*sysHardChangeDetected*/         no
#define  ID_PORT_SECURITY_VIOLATE       2    /*portSecurityViolate*/           yes
#define  ID_STORM_VIOLATION_ALARM       3    /*stormViolationAlarm*/           yes
#define  ID_MAC_NOTIFICATION            4    /*macNotification  */             yes
#define  ID_POWER_STATE_CHANGE          5    /*powerStateChange*/              no
#define  ID_FAN_STATE_CHANGE            6    /*fanStateChange*/                no
#define  ID_PIM_NEIGHBOR_LOSS           7    /*pimNeighborLoss*/               no
#define  ID_IGMP_VERSION_CONFLICTED     8    /*igmpVersionConflicted*/         no
#define  ID_DVMRP_ROUTE_INFORMATION     9    /*dvmrpRouteInformation*/         no
#define  ID_ENTITY_NOTIFICATION         10   /*entityNotification*/            yes
#define  ID_CLUSTER_MEMBER_STATE_CHANGE 11   /*clusterMemberStateChange*/      no 
#define  ID_TEMPERATURE_WARNING         12   /*temperatureWarning*/            no
#define  ID_LINE_DETECT                 13   /*lineDetect*/                    no
