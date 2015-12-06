<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="./resources/css/inspector.css" rel="stylesheet" type="text/css">
<link href="./resources/css/main.css" rel="stylesheet" type="text/css">
<link href="./resources/css/base.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="./resources/css/typo.css">
<!--[if IE]>
<link rel="stylesheet" type="text/css" href="./resources/css/ie.css"/><![endif]-->
<!-- Le fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/static/img/ico/apple-touch-icon-ipad3.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/static/img/ico/apple-touch-icon-iphone4.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/static/img/ico/apple-touch-icon-ipad.png">
<link rel="apple-touch-icon-precomposed" href="/static/img/ico/apple-touch-icon-iphone.png">
<link rel="shortcut icon" type="image/x-icon" href="./resources/images/favicon.ico">
<meta id="viewport" name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
 <style>
    code{ color:#1abc9c; } 
    
    pre{white-space:pre-wrap;}

    i.serif{ text-transform:lowercase; color:#1abc9c; }
    :-moz-any(h1, h2, h3, h4, h5, h5) i.serif{ text-transform: capitalize; }
    i.serif:hover{ color:inherit; }

    #wrapper{ padding:1% 3%; position:relative;}
    #tagline{ color:#999; font-size:1em; margin:-2em 0 2em; padding-bottom:2em; border-bottom:3px double #eee; }
    #fork{ position:fixed; top:0; right:0; _position:absolute; }
    #table{ margin-bottom:2em; color:#888; }
    #github{ position:absolute;top:1em;}
    #github iframe{ display:inline;margin-right:1em; }

    @media only screen and (max-width: 640px) {
      table{ word-break:break-all;word-wrap:break-word;font-size:12px; }
      .typo table th, .typo table td, .typo-table th, .typo-table td .typo table caption {
        padding: 0.5em;
      }
      #fork{ display:none; }
    }
  </style>
<title>传送门</title>

</head>
<body>
<div class="mobile_page " style="min-height: 400px">
<div id="ld_u9j4rh_102">
<div class="mobile_header" id="header">
<div class="logo logo_alert" id="__w2_iGwgFhq_logo">
<a href="/" id="__w2_iGwgFhq_logo_text">传送门</a>
</div>
<div class="search" style="position: absolute;right: 15px;left: 88px;">
<div class="search_contents navigator" style="width: 100%">
<form class="search_form" action="/search" method="get" name="search_form" style="width: 100%;background: #fff">
<div class="search_input" style="width: 100%">
<input class="question_box" name="q" type="text"  autocomplete="off" maxlength="250" placeholder="搜索" tabindex="1" id="__w2_sH6y6to_input" style="width: 80%">
</div>
</form>
</div>
</div>
</div>
</div>

<div class="content mobile_content home_page" id="container">
<div id="wrapper" class="typo typo-selection">
<h1>SDCC 2015架构专场札记：一线互联网公司的架构实践</h1><br/>
 <h2 id="tagline" class="serif">2015-12-06 胡涵 沸腾</h2>
 <p><span style="color: rgb(255, 169, 0);">【编者按】11月21日，为期三天的SDCC2015中国软件开发者大会成功闭幕，主办方总计邀请了95余位演讲嘉宾，为参会者奉献了10个主题演讲，9大技术专场论坛（80余场技术演讲），另外还有5场特色活动。另外，据官方统计参会人数高达1067名（不含工作人员）。</span></p>
<p></p>
<p><span style="color: rgb(255, 169, 0);">其中20日的架构专场，现场听讲人数一度爆满，而没有机会亲临现场的童鞋们，我们特邀请了业内专家、与会者分享他们的听课感受及他们眼中的架构专场。以下是来自搜狗商业平台架构师么刚参加架构专场的听课札记，以飨读者。</span></p>
<p></p>
<p><strong>以下为么刚的参会笔记：</strong></p>
<p></p>
<p><strong>航天信息股份有限公司高级架构师范刚：在互联网+的时代,该如何应对系统变革</strong></p>
<p></p>
<p>来自航天信息股份有限公司的范刚分享了在多年实践中对于系统改造重构的总结与思考。在互联网+的背景之下，很多架构师们面对的是层出不穷的需求、不断更新迭代的新技术以及满身补丁，让开发运维无比头大的老旧系统。是继续缝缝补补还是推倒重来？何去何从，范刚给出了渐进式改造、优化与维护并行，平台与重构并重的答案。很多老旧系统都面临着体系老旧，业务繁杂，代码耦合度高的问题，所谓的渐进式改造，就是在保持系统功能不变的情况下，将业务领域层和技术支撑平台解耦，并实现业务领域层的模块化，最终”像更换零件一样更新系统”。在实际的生产环境中，在进行系统改造的同时，必须满足新的业务需求，对于这个问题范刚给出的经验总结是优化与维护并行：由改造组进行系统优化，维护组满足业务需求，系统优化跟随业务版本上线，快速迭代小步快跑，便于系统优化阶段性效果的验证，也可以有效避免大版本切换的系统性风险。而平台与重构并重是技术支撑平台和业务领域层的优化同时展开，平台组完成技术架构的调研选型、基础平台、公共组件的设计和开发；业务组根据业务逻辑进行模块划分，结合业务需求制定项目计划，完成渐进式重构改造。最后结合项目实例，总结得到软件重构的七步曲（图1）。</p>
<p></p>
<p style="text-align: center;"><img style="float: none;" data-src="http://mmbiz.qpic.cn/mmbiz/wvkocF2MXjXwFKqvfyPGmjbkYlgcek7kgsK9Xqiaaq6FISnibicDjy7dOAnLKKcgp2L4CLIhAV3icibjKYusamzHQIA/0?wx_fmt=png" data-type="png" data-ratio="0.7751798561151079" data-w=""></p>
<p></p>
<p style="text-align: center;">图1 软件重构七步曲</p>
<p></p>
<p><strong>搜狗商业平台架构师刘建：搜狗商业平台基础架构演化实践</strong></p>
<p></p>
<p>刘建以搜狗商业平台基础架构为例，向我们完整的展示了一个系统从ALL-IN-ONE的初始阶段一步步演化成为一个高性能、高可用、高可扩展的成熟系统。搜狗商业平台的架构演化分为初始阶段、水平化、服务化和流式计算4个阶段（图2）。</p>
<p></p>
<ul class=" list-paddingleft-2" style="list-style-type: square;">
 <li><p>初始阶段，业务优先，快速迭代，但随着业务规模的迅速扩张，数据库健康度低，访问超时等问题日益凸显。</p></li>
 <li><p>在水平化阶段，通过计算水平化和存储水平化，成功解决了系统性能和存储问题，计算水平化的难点在于状态的处理，理想的设计是独立存储中间状态，实现计算节点的无状态化；而在进行存储水平化设计时，则需要更多的关注数据源的迁移成本，搜狗商业平台是通过自研的数据库分库分表框架Compass实现平滑迁移。</p></li>
 <li><p>在服务化阶段，通过优化解耦实现资源私有化，服务接口化和模块独立化，有效降低了团队之间的沟通协作成本。搜狗商业平台的服务化基础框架Polaris，是在Thrift基础之上增加了认证，授权，监控，失效重连和负载均衡等机制自研形成。</p></li>
</ul>
<p></p>
<p>为了更好的服务客户，引入了kafka + storm + pump + Binlog Tunnel的流式计算框架，流式系统在设计选型时需要充分考虑消息顺序性，消息重复和消息丢失问题，必要时可以进行双路比对，降低系统风险。</p>
<p></p>
<p>最后值得一提的是，搜狗商业平台最近开源了嵌入式数据库分库分表框架Compass，遵循标准的DataSource接口，支持分库分表、读写分离和负载均衡，可屏蔽底层数据源差异，支持方便的数据源迁移和扩容缩容，并能够进行有效的数据源健康度监控。</p>
<p></p>
<p style="text-align: center;"><img style="float: none;" data-src="http://mmbiz.qpic.cn/mmbiz/wvkocF2MXjXwFKqvfyPGmjbkYlgcek7knCsoM9SXGiaXaVRpuBFDy2C8II2WHOeDqloqzh3LAyNhad7eSf7YsRg/0?wx_fmt=png" data-type="png" data-ratio="0.5449640287769785" data-w=""></p>
<p></p>
<p style="text-align: center;">图2搜狗商业平台基础架构演化</p>
<p></p>
<p><strong>饿了么创新产品研发部副总监程军: 饿了么整体架构</strong></p>
<p></p>
<p>饿了么技术体系是典型的业务驱动，业务量的爆发式增长推动整体架构不断向前演化。饿了么经历了单机时代、集群时代、SOA时代（图3）的演进过程。为解决性能问题，核心gateway使用F5代替了HAProxy。在SOA过程中，对于核心服务采用数据库按领域拆分、热数据缓存、异步消息通知和服务降级的策略，有效的应对流量洪峰。在数据库方面，饿了么自研了数据中间件DAL，实现了MySQL的连接池、分库分表、读写分离、查询拒绝等功能。引入Service Orchestrator实现前后端分离，提高系统并发度、缩短响应时间。另外饿了么的核心服务是基于Python 构建，也为我们提供了一个用python架构支持高并发互联网服务的一个范例。</p>
<p></p>
<p style="text-align: center;"><img style="float: none;" data-src="http://mmbiz.qpic.cn/mmbiz/wvkocF2MXjXwFKqvfyPGmjbkYlgcek7kIbK0IcshCAY6S708qIMgSVic9nr5BpTzV5auA4JEEFWSibiam3uKc73JA/0?wx_fmt=png" data-type="png" data-ratio="0.6474820143884892" data-w=""></p>
<p></p>
<p style="text-align: center;">图3饿了么整体架构</p>
<p></p>
<p><strong>小米科技的架构师张涛：小米网架构变迁实践</strong></p>
<p></p>
<p>来自小米科技的张涛，分享了小米网的架构变迁以及架构选型的一些思考。为应对业务的迅猛增长，小米网对系统架构做了如下的演进优化：对DB按系统拆分，做到水平可扩展；系统调用关系由网状结构优化为星状结构，引入MQ，实现系统解耦；纵向来看，把系统划分为调度层、业务层、数据层三层结构，功能明确，接口清晰；引入Cobar解决浪涌导致的高压。如何在架构设计层面提高效率，降低成本，小米网的做法是抽象基础服务和基础组建，节约开发成本，提升服务质量；按照“业务纵切，平台横切”的方案，实现业务的模块化和基础服务的平台化。另外张涛还介绍了小米网的特色技术，包括流量控制架构、通用缓存框架MCC、异步消息推送服务Notify、库存设计和智能调拨算法、虚拟化和云服务、监控和异常、安全策略、SOA等。其中MCC采用的是Twemproxy+redis成熟缓存方案，并考虑了数据热加载，业务隔离，多机房灾备等问题而形成的通用缓存框架；告警量爆炸也是大中型互联网公司的常见问题，对此小米给出的建议是：区分异常和告警，只有满足一定频度或数量的异常才能升级为告警，而所有告警必须处理；小米网的SOA框架如下图4 所示，框架选型是基于Thrift实现RPC核心功能，基于etcd完成服务注册、服务发现、failover、框架支持多语言环境，研发可以用很小的成本快速搭建RPC服务。</p>
<p></p>
<p style="text-align: center;"><img style="float: none;" data-src="http://mmbiz.qpic.cn/mmbiz/wvkocF2MXjXwFKqvfyPGmjbkYlgcek7kyuwF5eQBxNl1q9fXzwrP2icPrOT5iaxeO3icTXMB44kpLUyicy1iazKictWQ/0?wx_fmt=png" data-type="png" data-ratio="0.7553956834532374" data-w=""></p>
<p></p>
<p style="text-align: center;">图4小米SOA框架</p>
<p></p>
<p><strong>途牛旅游网研发总监高健：途牛网站无线架构变迁</strong></p>
<p></p>
<p>途牛旅游网的高健从服务化的推进、多机房异地部署、性能优化和APP客户端技术4个方面介绍了途牛无线架构的演进。在服务化方面，通过引入MQ实现服务的异步化，通过数据库的分库分表实现高性能的并发计算，通过引入NoSQL、MySQL异构同步机制，Unix域通信机制实现分布式计算（图5），并通过注册中心和监控中心实现整个系统的高可用性和高可维护性。多机房异地部署面临的问题是专线不稳定和数据同步延迟过大，因此对于对实时性要求较高的数据可以采用应用层双写的方案。在性能优化部分，途牛采用Codis进行热数据缓存，并且自研了缓存更新系统BWT和监控系统OSS，保障Codis的易用性和平稳运行。而在APP技术方面，采用插件式开发框架，模块之间相互独立，降低耦合度；使用静态化资源，提升响应速度；引入alibaba的AndFix框架，实现热修复。</p>
<p></p>
<p style="text-align: center;"><img style="float: none;" data-src="http://mmbiz.qpic.cn/mmbiz/wvkocF2MXjXwFKqvfyPGmjbkYlgcek7kfDEsj9aLibMaSicSTVRPR0pGRNPARlyjbtJAWFtPeTC5TWEGqeh3WGUQ/0?wx_fmt=png" data-type="png" data-ratio="0.48381294964028776" data-w=""></p>
<p></p>
<p style="text-align: center;">图5途牛分布式计算架构</p>
<p></p>
<p><strong>快的打车架构师王小雪：快的打车架构实践</strong></p>
<p></p>
<p>快的架构师王小雪完整的回顾了快的打车架构演化过程，从最开始的功能基本可用，到核心链路优化，再到体系化架构设计。在核心链路优化阶段面临的主要问题是LBS查询性能瓶颈和长连接服务不稳定，直接影响到快的核心业务，问题的原因更多地涉及实现层面的细节：比如MongoDB早期版本全库锁的问题，频繁内存拷贝的问题，超时管理算法效率的问题，考验着架构师问题快速定位的能力。而在体系化架构设计阶段则是更为全局和宏观的设计和优化，包括：系统分布式改造、无线开发平台、日志收集检索系统、实时计算与监控和数据层改造等。其中系统分布式改造的技术选型是dubbo+RocketMQ，实现服务之间的接口化和异步化；日志收集和检索系统主要功能是实现问题的快速定位，技术选型是log4j + flume + elasticsearch的组合，单个请求的链式调用关系通过flag进行串联，实现分布式系统的问题追踪和定位；快的的实时计算系统目标是提供实时准确的运营数据，技术选型是较为通用的RocketMQ+storm+HBase，RocketMQ为storm和HBase提供流量平滑功能，HBase在使用时根据业务场景避免update操作，提升性能；在数据源改造（图6）的基本思路是用HBase查询代替Mysql的SQL查询，其中最核心的技术点是Mock Mysql Slave，从mysql master得到binlog数据通过MQ同步到HBase、HDFS等异构存储介质之上，另外HBase的二级索引也是一个社区比较热门的话题，快的的方法是在客户端插入二级索引，相比Coprocessor的方案可更好的兼容HBase批量插入操作。</p>
<p></p>
<p style="text-align: center;"><img style="float: none;" data-src="http://mmbiz.qpic.cn/mmbiz/wvkocF2MXjXwFKqvfyPGmjbkYlgcek7kC3sjrVzVyqqRyI01qTrJ86YZ0PjLptpqAicIO1KP2PibfyibxE8xs31Gw/0?wx_fmt=png" data-type="png" data-ratio="0.5737410071942446" data-w=""></p>
<p></p>
<p style="text-align: center;">图6 统一数据同步方案</p>
<p></p>
<p><strong>58同城系统架构师孙玄：58同城高性能移动Push推送平台架构演进之路</strong></p>
<p></p>
<p>孙玄介绍了58移动Push从单平台、多平台，再到高性能平台的演进过程。58最先提供的是iOS的Push服务，iOS不允许service后台常驻，因此APSN几乎是IOS Push的唯一选择，单平台阶段，58搭建了iOS Provider平台和APSN对接，提供了证书验证、连接池、错误处理等功能。随着移动流量的爆发，多终端，多APPs，多策略的业务需求，推动Push进入多平台阶段。关于Android推送，58采用的是自研Android Provider和第三方Push平台对接的方案；采用抽象公共逻辑，统一封装接口的方式解决需求多样化，逻辑复杂化的问题，提升开发效率。高性能阶段则重点解决的是Push性能和稳定性的问题，在性能优化方面，搭建IOS/Android统一的push平台（图7），并通过Push的并行化，异步化提升整体性能；关于稳定性的讨论主要是集中在Android终端，根据不同机型选择不同的Push通道，也可以根据策略选择失败重试机制。</p>
<p></p>
<p style="text-align: center;"><img data-src="http://mmbiz.qpic.cn/mmbiz/wvkocF2MXjXwFKqvfyPGmjbkYlgcek7kQHIa8HKib3P4HCmmQFJia6c1fW9F1DNJuDo42Zc1BOQdk0xZPguQ5ibOQ/0?wx_fmt=png" data-ratio="0.7086330935251799" data-w="" data-type="png"></p>
<p></p>
<p style="text-align: center;">图7 58同城移动Push架构</p>
<p></p>
<p><strong>腾讯高级工程师徐汉彬：QQ会员活动运营平台的架构设计演变</strong></p>
<p></p>
<p>来自腾讯的徐汉彬以会员活动为背景介绍了AMS的架构演变。QQ活动运营的特点是活动多、周期短、个性化强而且过期作废。人力成本极为有限和层出不穷的业务需求是需要解决的主要矛盾，这里徐汉彬给出答案是构建高效的运营开发模式，整个系统架构从上至下分为前端层、CGI层和服务层，前端层提供基础组件，CGI实现业务逻辑，服务层提供平台支撑，通过活动配置文件实现前端逻辑和后端服务的自由组合（图8），使产品运营同学可以独立完成活动发布。除此之外，系统的性能、可用性和安全性也是架构师需要考虑的问题。性能优化方面，AMS引入NoSQL优化增查改删的性能；并采用了带版本号的CAS乐观锁机制提升高频操作的并发度，从而支撑了5w+/s的秒杀活动。对于可用性从架构设计和多维度运维监控两个方面来保证，架构设计层面充分考虑了水平扩容、failover、过载保护、服务降级等问题；在运维监控角度，建立多通道，多维度的监控告警机制，确保及时发现响应线上问题。关于安全体系，AMS采用了技术手段、产品设计、安全支撑体系多管骑下的思路，最大程度上保障业务安全。</p>
<p></p>
<p>其实这里有一个可以引申开来的话题——科技公司的工具文化，有种比较激进的观点是用最优秀的人才来开发工具，提升整个团队，整个公司的效率，徐汉彬的分享也从一个侧面展示了技术工具的强大威力。</p>
<p></p>
<p style="text-align: center;"><img style="float: none;" data-src="http://mmbiz.qpic.cn/mmbiz/wvkocF2MXjXwFKqvfyPGmjbkYlgcek7khchDibz9VguBg5bkCsBPq54TPMC8KW5qdCdNWdJJG1Y8rnic44GpT8Aw/0?wx_fmt=png" data-type="png" data-ratio="0.6169064748201439" data-w=""></p>
<p></p>
<p style="text-align: center;">图8腾讯AMS自动化运营体系</p>
<p></p>
<p><span style="color: rgb(255, 169, 0);"><strong>总结</strong></span></p>
<p></p>
<p>听了上述一线架构大牛的分享，收获良多，同时也颇有感触。</p>
<p></p>
<ul class=" list-paddingleft-2" style="list-style-type: square;">
 <li><p>全栈架构。从本次架构会场的分享涵盖了从基础架构到业务形态，从系统设计到持续交付，从安全、监控到虚拟化技术，从版本迭代到项目���入产出比等诸多领域。本质上，架构师的职责就是充分评估业务，人员，成本等要素在技术层面上保障服务的顺利落地，稳定运行并适时推动平滑升级，期间遇到的所有技术的问题都是架构师需要直面的。既是新业务新技术的探路者，又是扫清线上系统瓶颈的急先锋，架构师的担子，不轻。</p></li>
 <li><p>趋同存异。一天的分享中，服务化、分库分表、异步、分布式、安全、监控等这些高频词反复出现，说明架构设计的基本原则和架构师们关注点是趋同的，甚至各自系统架构演化到不同阶段遇到的瓶颈和应对的举措也是惊人的相似。当然也有不同，比如安全，有些场景下关注的业务安全，有些则更关注数据安全；比如数据一致性，有些场景要求强一致性，有些只需关注最终一致性。而其实也正是业务场景的差异给了架构师们展示自己聪明才智的舞台。</p></li>
 <li><p>拥抱变化。从分享的主题来看，变化、变迁、演化，主线是一个“变”字。业务量的迅猛增长会倒逼架构的优化和升级，快的和饿了么是典型的例子。而新技术出现也会推动架构的变革，比如服务化可以提升开发效率，降低协作成本；比如流式计算，可以改善用户体验甚至是引导用户需求。无论是业务驱动还是技术驱动，架构师都需要做的就是时刻拥抱变化，成为一个敏锐的观察者，技术航线的引领者和架构的实践者。</p></li>
</ul>
<p></p>
<p><strong><span style="font-size: 14px; color: rgb(136, 136, 136);">作者介绍：</span></strong><span style="font-size: 14px; color: rgb(136, 136, 136);">么刚，搜狗商业平台架构师，主要负责海量数据的分布式存储和计算，解决分布式、高并发、强一致性等带来的技术难题及挑战，保障系统的健壮性，高性能和高可用性。</span></p>
<p></p>
<p><span style="font-size: 14px;"></span></p>
<p><span style="font-size: 14px;">「CSDN 架构师群」，内有SDCC 2015架构专场的讲师和诸多知名互联网公司的大牛架构师，如果你想进群交流，请加微信qshuguang2008申请入群，备注姓名+公司+职位。</span></p>
<p><span style="font-size: 14px;"></span></p>
<p><span style="font-size: 14px;"><img data-s="300,640" data-type="jpeg" data-src="http://mmbiz.qpic.cn/mmbiz/wvkocF2MXjXwFKqvfyPGmjbkYlgcek7kWS6Js51NzvQuo3MURGvmzZrMkvlQml166LW7ykZ6j54tZAkD0a3ZYg/0?wx_fmt=jpeg" data-ratio="0.017985611510791366" data-w=""></span></p>
<p><span style="font-size: 14px;"></span></p>
<p><span style="font-size: 14px;">（责编/ 钱曙光，关注架构和算法领域，寻求报道或者投稿请发邮件qianshg@csdn.net，交流探讨可加微信qshuguang2008，备注姓名+公司+职位） </span></p> 
</div> 

 

<!-- #wrapper -->
</div>
<div>
<div class="mobile_sub_header row">
<div class="mobile_sub_header_buttons">
<ul>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">产品</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">架构</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">Java</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">运营</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="#">运维</a>
</li>

<li class="mobile_sub_header_button br5 inbox">
<a href="/">最新</a>
</li>
<li class="mobile_sub_header_button br5 inbox">
<a href="#">精选</a>
</li>
</ul>
</div>
</div>
</div>

<div class="mobile_footer" id="footer">
<ul class="mobile_footer_options">
<li><a href="/">首页</a></li>
<li class="full_site"><a href="#" target="_blank">热榜</a></li>
</ul>
</div>
</div>  
<script language="javascript" src="./resources/js/reimg.js"></script>
</html>
