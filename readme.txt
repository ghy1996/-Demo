# DEMO仅供参考，实际开发中需要结合具体业务场景修改使用
#
# 运行环境:jdk1.6及以上
# demo使用前必读

# 运行demo步骤如下(eclipse直接导入工程即可):
1、修改配置文件src/resources/Alipay-Config.properties中的参数
2、在项目上右键，点击Run As ->Run on Server启动web服务; 


### 当面付2.0demo代码结构TradePayDemo ###
alipayDemoJava
├── src
│   └── main
│       ├── java
│       │   └── com
│       │       └── alipay
│       │           ├── config
│       │           │   ├── AlipayConfig.java   # 配置文件的读取类，用于读取配置文件以及配置文件更新等操作
│       │           │   └── DefaultAlipayClientFactory.java  # 用于初始化sdk的客户端
│       │           ├── demo
│       │           │   ├── controller
│       │           │   │   ├── MainController.java  #入口controller，里面包含前端显示的接口的接口信息
│       │           │   │   ├── NotifyController.java  #异步接收controller，用于接收异步通知
│       │           │   │   ├── ReturnController.java  #同步返回controller，用于同步返回使用
│       │           │   │   └── {接口名}Controller.java  # 各    各接口请求的controller，文件名中{接口名}是接口首字母大写的形式，用于接收前端的请求参数，进行与支付宝的对接
│       │           │   └── entities
│       │           │       ├── ApiInfoModel.java  # 接口信息的实体类，用于存储接口各项信息
│       │           │       ├── ApiParamModel.java # 接口参数信息的实体类，用于存储接口参数各项信息
│       │           │       └── Result.java # 处理结果的实体类，用于前端请求的规范处理结果
│       │           └── util
│       │               └── StringUtil.java  #字符串处理工具类
│       └── resources
│           ├── spring
│           │   └── applicationContext-base.xml  # spring配置文件
│           └── Alipay-Config.properties  # 配置文件，在启动服务前确认已配置正确
└── WebContent
        ├── WEB-INF
        │   ├── lib  # 依赖类库
        │   │   ├── alipay-sdk-java{XXX}-source.jar
        │   │   ├── alipay-sdk-java{XXX}.jar  # 支付宝开放平台sdk
        │   │   ├── commons-logging-1.1.1-sources.jar
        │   │   ├── commons-logging-1.1.1.jar
        │   │   ├── jackson-annotations-2.9.0.jar
        │   │   ├── jackson-core-2.9.0.jar
        │   │   ├── jackson-databind-2.9.0.jar
        │   │   ├── servlet-api.jar
        │   │   ├── spring-aop-4.3.12.RELEASE.jar
        │   │   ├── spring-beans-4.3.12.RELEASE.jar
        │   │   ├── spring-context-4.3.12.RELEASE.jar
        │   │   ├── spring-core-4.3.12.RELEASE.jar
        │   │   ├── spring-expression-4.3.12.RELEASE.jar
        │   │   ├── spring-web-4.3.12.RELEASE.jar
        │   │   └── spring-webmvc-4.3.12.RELEASE.jar
        │   ├── view  # 动态页面资源
        │   │   ├── api  
        │   │   │   └── main.jsp  # demo展示页
        │   │   ├── base
        │   │   │   ├── common.jsp  # 通用静态资源应用页
        │   │   │   ├── head.jsp  # 通用头部
        │   │   │   └── foot.jsp  # 通用尾部
        │   │   └── tools
        │   ├── web.xml
        │   └── dispatcher-servlet.xml # spring配置文件
        ├── static  #静态资源文件
        │   ├── css
        │   ├── images
        │   └── js
        │       ├── bootstrap
        │       ├── jquery-3.2.1.js
        │       ├── main.js  # demo展示页js
        │       └── tabPanel.js
        ├── index.htm     # 此项目中目前无实际用处
        └── main.htm      # 该页用于解决springmvc环境下web.xml的welcome-file生效问题，无实际意义



# DEMO仅供参考，实际开发中需要结合具体业务场景修改使用