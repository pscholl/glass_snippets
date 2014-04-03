.class public Lcom/google/glass/logging/UserEventService;
.super Landroid/app/Service;
.source "UserEventService.java"


# static fields
.field private static final DEVICE_CHECKIN_PARSER:Lcom/google/glass/net/ProtoParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final GET_SESSION_ID_PARSER:Lcom/google/glass/net/ProtoParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EVENTS:I = 0x2710

.field private static final MAX_QUEUE_FILE_SIZE:J = 0x9c4000L

#the value of this static final field might be set in the static constructor
.field private static final PERF_STATS_LOGCAT_INTERVAL:J = 0x0L

.field private static final QUEUE_FILE:Ljava/lang/String; = "user_events_1"

.field private static final REPORT_USER_EVENT_PARSER:Lcom/google/glass/net/ProtoParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<",
            "Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERIAL_KEY:Ljava/lang/String; = "serial"

.field private static final SESSION_KEY:Ljava/lang/String; = "session"

.field private static final TAG:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final TIME_BETWEEN_FLUSHES_MS:J = 0x0L

.field private static final USER_EVENT_PARSER:Lcom/google/glass/net/ProtoParser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoParser",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final USER_EVENT_PREFS:Ljava/lang/String; = "UserEventPrefs"


# instance fields
.field private battery:Lcom/google/glass/util/BatteryHelper;

.field private checkinResponseHandler:Lcom/google/glass/net/ProtoResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;",
            ">;"
        }
    .end annotation
.end field

.field private eventQueueFullCount:I

.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end field

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private isStarted:Z

.field private lastFlushTime:J

.field private lastPerfStatsLogcatTime:J

.field private queueFile:Lcom/google/glass/util/ProtoListFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/util/ProtoListFile",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end field

.field private requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

.field private serial:J

.field private sessionId:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const-class v0, Lcom/google/glass/logging/UserEventService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/google/glass/net/ProtoParser;

    new-instance v1, Lcom/google/glass/logging/UserEventService$1;

    invoke-direct {v1}, Lcom/google/glass/logging/UserEventService$1;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/ProtoParser;-><init>(Lcom/google/glass/net/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/logging/UserEventService;->DEVICE_CHECKIN_PARSER:Lcom/google/glass/net/ProtoParser;

    .line 72
    new-instance v0, Lcom/google/glass/net/ProtoParser;

    new-instance v1, Lcom/google/glass/logging/UserEventService$2;

    invoke-direct {v1}, Lcom/google/glass/logging/UserEventService$2;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/ProtoParser;-><init>(Lcom/google/glass/net/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/logging/UserEventService;->USER_EVENT_PARSER:Lcom/google/glass/net/ProtoParser;

    .line 81
    new-instance v0, Lcom/google/glass/net/ProtoParser;

    new-instance v1, Lcom/google/glass/logging/UserEventService$3;

    invoke-direct {v1}, Lcom/google/glass/logging/UserEventService$3;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/ProtoParser;-><init>(Lcom/google/glass/net/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/logging/UserEventService;->GET_SESSION_ID_PARSER:Lcom/google/glass/net/ProtoParser;

    .line 90
    new-instance v0, Lcom/google/glass/net/ProtoParser;

    new-instance v1, Lcom/google/glass/logging/UserEventService$4;

    invoke-direct {v1}, Lcom/google/glass/logging/UserEventService$4;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/glass/net/ProtoParser;-><init>(Lcom/google/glass/net/ProtoParser$Provider;)V

    sput-object v0, Lcom/google/glass/logging/UserEventService;->REPORT_USER_EVENT_PARSER:Lcom/google/glass/net/ProtoParser;

    .line 126
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/UserEventService;->TIME_BETWEEN_FLUSHES_MS:J

    .line 129
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/logging/UserEventService;->PERF_STATS_LOGCAT_INTERVAL:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/logging/UserEventService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/glass/logging/UserEventService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/google/glass/logging/UserEventService;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/glass/logging/UserEventService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/logging/UserEventService;)Lcom/google/glass/util/ProtoListFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->queueFile:Lcom/google/glass/util/ProtoListFile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/logging/UserEventService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->checkin()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->addPerformanceStats(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/logging/UserEventService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->lastPerfStatsLogcatTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/google/glass/logging/UserEventService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/google/glass/logging/UserEventService;->lastPerfStatsLogcatTime:J

    return-wide p1
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 60
    sget-wide v0, Lcom/google/glass/logging/UserEventService;->PERF_STATS_LOGCAT_INTERVAL:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/google/glass/logging/UserEventService;->clone(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/logging/UserEventService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->logQueued(Z)V

    return-void
.end method

.method private addPerformanceStats(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 10
    .parameter "userEvent"

    .prologue
    .line 509
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 510
    new-instance v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    invoke-direct {v5}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;-><init>()V

    .line 511
    .local v5, stats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBoardTemperature()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->boardTemperatureMilliCentigrade:Ljava/lang/Integer;

    .line 512
    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBatteryStateOfChargeUah()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryStateOfChargeUah:Ljava/lang/Integer;

    .line 513
    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBatteryChargeWhenFullUah()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryChargeWhenFullUah:Ljava/lang/Integer;

    .line 514
    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getReportedBatteryStateOfChargePercent()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->reportedSoc:Ljava/lang/Integer;

    .line 515
    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getBatteryTemperature()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->batteryTemperatureMilliCentigrade:Ljava/lang/Integer;

    .line 516
    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getTotalBytesSent()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalBytesSent:Ljava/lang/Long;

    .line 517
    invoke-static {}, Lcom/google/glass/logging/PerformanceUtil;->getFrequencyScalingGovernor()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyScalingGovernor:Ljava/lang/Integer;

    .line 519
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 520
    .local v0, cpuFrequencyTime:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {v0}, Lcom/google/glass/logging/PerformanceUtil;->getFrequencyStats(Ljava/util/Map;)V

    .line 522
    const-wide/16 v6, 0x0

    .line 523
    .local v6, totalCpuTime:J
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v3, freqStats:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;>;"
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 525
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    new-instance v2, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-direct {v2}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;-><init>()V

    .line 526
    .local v2, freqStat:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    iput-object v8, v2, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->frequencyHz:Ljava/lang/Long;

    .line 527
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    iput-object v8, v2, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;->durationMs:Ljava/lang/Long;

    .line 528
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 529
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v2           #freqStat:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 532
    const/4 v8, 0x0

    new-array v8, v8, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    invoke-interface {v3, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    iput-object v8, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->frequencyStat:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventFrequencyStat;

    .line 535
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v5, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->totalKernelMs:Ljava/lang/Long;

    .line 536
    iput-object v5, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->performanceStats:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;

    .line 537
    return-object p1
.end method

.method private addToQueue(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 5
    .parameter "userEvent"

    .prologue
    .line 544
    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->queueFile:Lcom/google/glass/util/ProtoListFile;

    invoke-virtual {v2}, Lcom/google/glass/util/ProtoListFile;->flushedSize()J

    move-result-wide v0

    .line 545
    .local v0, queueFileSize:J
    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    const-wide/32 v2, 0x9c4000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 549
    :cond_0
    sget-object v2, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Throwing away log event because queue is full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events; file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    iget-object v2, v2, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 554
    iget v2, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 558
    :cond_2
    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->queueFile:Lcom/google/glass/util/ProtoListFile;

    invoke-virtual {v2, p1}, Lcom/google/glass/util/ProtoListFile;->write(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0
.end method

.method private checkin()V
    .locals 7

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->DEVICE_CHECKIN:Lcom/google/glass/net/ServerConstants$Action;

    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->createCheckinRequest()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    move-result-object v2

    const/4 v3, 0x1

    sget-object v4, Lcom/google/glass/logging/UserEventService;->DEVICE_CHECKIN_PARSER:Lcom/google/glass/net/ProtoParser;

    iget-object v5, p0, Lcom/google/glass/logging/UserEventService;->checkinResponseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    move-result v6

    .line 361
    .local v6, dispatched:Z
    if-nez v6, :cond_0

    .line 362
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to schedule checkin request"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :cond_0
    return-void
.end method

.method private static clone(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    .locals 4
    .parameter "stats"

    .prologue
    .line 472
    :try_start_0
    invoke-static {p0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;->parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventPerformanceStats;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 477
    :goto_0
    return-object v1

    .line 473
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-virtual {v0}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Couldn\'t clone performance stats"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createBuild()Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    .locals 11

    .prologue
    const/high16 v10, -0x8000

    const/4 v0, 0x0

    .line 397
    const-string v6, "ro.build.display.id"

    invoke-static {v6, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 398
    .local v5, softwareVersion:Ljava/lang/String;
    const-string v6, "ro.build.type"

    invoke-static {v6, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, buildTypeString:Ljava/lang/String;
    const-string v6, "ro.build.version.glass"

    invoke-static {v6, v0}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 400
    .local v4, majorVersion:Ljava/lang/String;
    const/high16 v1, -0x8000

    .line 401
    .local v1, buildType:I
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 403
    :try_start_0
    const-class v6, Lcom/google/googlex/glass/common/proto/BuildNano$BuildType;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/glass/util/ProtoEnumUtils;->getEnumValue(Ljava/lang/Class;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    :cond_0
    :goto_0
    if-nez v5, :cond_2

    if-ne v1, v10, :cond_2

    if-nez v4, :cond_2

    .line 426
    :cond_1
    :goto_1
    return-object v0

    .line 404
    :catch_0
    move-exception v3

    .line 405
    .local v3, e:Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported build type [buildType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/glass/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 415
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    new-instance v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BuildNano$Build;-><init>()V

    .line 416
    .local v0, build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 417
    iput-object v5, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildDisplayId:Ljava/lang/String;

    .line 419
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 420
    iput-object v4, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildVersion:Ljava/lang/String;

    .line 422
    :cond_4
    if-eq v1, v10, :cond_1

    .line 423
    iput v1, v0, Lcom/google/googlex/glass/common/proto/BuildNano$Build;->buildType:I

    goto :goto_1
.end method

.method private createCheckinRequest()Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    .locals 6

    .prologue
    .line 370
    new-instance v4, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v5, "android_id"

    invoke-virtual {v4, v5}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, deviceId:Ljava/lang/String;
    new-instance v2, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;-><init>()V

    .line 372
    .local v2, request:Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;
    iput-object v1, v2, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->deviceId:Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->createBuild()Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    move-result-object v0

    .line 375
    .local v0, build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;
    if-eqz v0, :cond_0

    .line 376
    iput-object v0, v2, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->build:Lcom/google/googlex/glass/common/proto/BuildNano$Build;

    .line 379
    :cond_0
    const-string v4, "ro.serialno.glass"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, serialNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 381
    iput-object v3, v2, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->serialNumber:Ljava/lang/String;

    .line 386
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->ensureSessionId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 387
    iget-object v4, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    iput-object v4, v2, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinRequest;->sessionId:Ljava/lang/String;

    .line 390
    :cond_2
    return-object v2
.end method

.method private createThread(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .parameter "threadName"

    .prologue
    const/4 v1, 0x1

    .line 245
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    invoke-direct {v0, v1, p1}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private ensureSessionId()Z
    .locals 3

    .prologue
    .line 650
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 651
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "session"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->sendBlockingGetSessionIdRequest()V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    const/4 v0, 0x0

    .line 662
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 728
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 730
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 731
    .local v2, ni:Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 732
    .local v1, isConnected:Z
    :goto_0
    return v1

    .line 731
    .end local v1           #isConnected:Z
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method private log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V
    .locals 2
    .parameter "userEvent"
    .parameter "isForced"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/logging/UserEventService$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/logging/UserEventService$11;-><init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 468
    return-void
.end method

.method private logQueued(Z)V
    .locals 12
    .parameter "isForced"

    .prologue
    const/4 v11, 0x0

    .line 571
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 574
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 579
    .local v3, now:J
    if-nez p1, :cond_2

    iget-wide v7, p0, Lcom/google/glass/logging/UserEventService;->lastFlushTime:J

    sub-long v7, v3, v7

    sget-wide v9, Lcom/google/glass/logging/UserEventService;->TIME_BETWEEN_FLUSHES_MS:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 586
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/logging/UserEventService;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 588
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Cannot send user events as there is no data connection."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    :cond_3
    if-nez p1, :cond_4

    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v7}, Lcom/google/glass/util/BatteryHelper;->isPowered()Z

    move-result v7

    if-nez v7, :cond_4

    .line 594
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Cannot send user events as the device is not plugged in, log is not forced."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 599
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/logging/UserEventService;->ensureSessionId()Z

    move-result v7

    if-nez v7, :cond_5

    .line 600
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Cannot send user events as we have no session ID."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 605
    :cond_5
    sget-object v7, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v8, "Attempting a user event log flush."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    iput-wide v3, p0, Lcom/google/glass/logging/UserEventService;->lastFlushTime:J

    .line 608
    const-string v7, "ro.build.display.id"

    const-string v8, "unknown build version"

    invoke-static {v7, v8}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 610
    .local v5, softwareVersion:Ljava/lang/String;
    new-instance v7, Lcom/google/glass/logging/Util;

    invoke-direct {v7}, Lcom/google/glass/logging/Util;-><init>()V

    invoke-virtual {v7}, Lcom/google/glass/logging/Util;->getHardwareVersion()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, hardwareVersion:Ljava/lang/String;
    iget v7, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    if-lez v7, :cond_6

    .line 615
    new-instance v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    .line 616
    .local v6, userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->USER_EVENT_QUEUE_FULL:Lcom/google/glass/userevent/UserEventAction;

    iget-object v7, v7, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    iput-object v7, v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    .line 617
    iget v7, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventData:Ljava/lang/String;

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventTimeMs:Ljava/lang/Long;

    .line 619
    invoke-virtual {p0, v6}, Lcom/google/glass/logging/UserEventService;->addSerial(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v7

    invoke-direct {p0, v7, v5, v1}, Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iput v11, p0, Lcom/google/glass/logging/UserEventService;->eventQueueFullCount:I

    .line 624
    .end local v6           #userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_6
    if-eqz p1, :cond_7

    .line 625
    new-instance v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {v6}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;-><init>()V

    .line 626
    .restart local v6       #userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v7, Lcom/google/glass/userevent/UserEventAction;->FORCE_EVENT_LOG_FLUSH:Lcom/google/glass/userevent/UserEventAction;

    iget-object v7, v7, Lcom/google/glass/userevent/UserEventAction;->action:Ljava/lang/String;

    iput-object v7, v6, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    .line 627
    invoke-virtual {p0, v6}, Lcom/google/glass/logging/UserEventService;->addSerial(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v7

    invoke-direct {p0, v7, v5, v1}, Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .end local v6           #userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_7
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 633
    .local v0, e:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    invoke-direct {p0, v0, v5, v1}, Lcom/google/glass/logging/UserEventService;->sendReportUserEventRequest(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 637
    .end local v0           #e:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_8
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v7}, Lcom/google/glass/net/ProtoRequestDispatcher;->flush()V

    .line 640
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 643
    iget-object v7, p0, Lcom/google/glass/logging/UserEventService;->queueFile:Lcom/google/glass/util/ProtoListFile;

    invoke-virtual {v7}, Lcom/google/glass/util/ProtoListFile;->delete()V

    goto/16 :goto_0
.end method

.method private sendBlockingGetSessionIdRequest()V
    .locals 5

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->GET_SESSION_ID:Lcom/google/glass/net/ServerConstants$Action;

    new-instance v2, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdRequest;-><init>()V

    sget-object v3, Lcom/google/glass/logging/UserEventService;->GET_SESSION_ID_PARSER:Lcom/google/glass/net/ProtoParser;

    new-instance v4, Lcom/google/glass/logging/UserEventService$12;

    invoke-direct {v4, p0}, Lcom/google/glass/logging/UserEventService$12;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;->blockingDispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;Lcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 679
    return-void
.end method

.method private sendReportUserEventRequest(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "event"
    .parameter "softwareVersion"
    .parameter "hardwareVersion"

    .prologue
    const/4 v3, 0x0

    .line 686
    new-instance v2, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;

    invoke-direct {v2}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;-><init>()V

    .line 687
    .local v2, request:Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    aput-object p1, v0, v3

    iput-object v0, v2, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->userEventProto:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    .line 688
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sessionId:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->sessionId:Ljava/lang/String;

    .line 689
    iput-object p2, v2, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->softwareVersion:Ljava/lang/String;

    .line 690
    iput-object p3, v2, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventRequest;->hardwareVersion:Ljava/lang/String;

    .line 694
    const/4 v9, 0x0

    .line 697
    .local v9, logMetrics:Z
    const/4 v8, 0x0

    .line 698
    .local v8, isImmediate:Z
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->REPORT_USER_EVENT:Lcom/google/glass/net/ServerConstants$Action;

    sget-object v4, Lcom/google/glass/logging/UserEventService;->REPORT_USER_EVENT_PARSER:Lcom/google/glass/net/ProtoParser;

    new-instance v5, Lcom/google/glass/logging/UserEventService$13;

    invoke-direct {v5, p0, p1}, Lcom/google/glass/logging/UserEventService$13;-><init>(Lcom/google/glass/logging/UserEventService;Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/nano/MessageNano;ZLcom/google/glass/net/ProtoParser;Lcom/google/glass/net/ProtoResponseHandler;Z)Z

    move-result v7

    .line 719
    .local v7, dispatched:Z
    if-nez v7, :cond_0

    .line 720
    invoke-direct {p0, p1}, Lcom/google/glass/logging/UserEventService;->addToQueue(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 722
    :cond_0
    return-void
.end method


# virtual methods
.method addSerial(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .locals 4
    .parameter "userEvent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 484
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 487
    iget-object v0, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertNull(Ljava/lang/Object;)V

    .line 490
    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "serial"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    .line 495
    :cond_0
    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventSerial:Ljava/lang/Long;

    .line 498
    iget-wide v0, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    .line 499
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serial"

    iget-wide v2, p0, Lcom/google/glass/logging/UserEventService;->serial:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 504
    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 194
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 195
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UserEventPrefs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 201
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 203
    const-string v0, "UserEventBackgroundThread"

    invoke-direct {p0, v0}, Lcom/google/glass/logging/UserEventService;->createThread(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 205
    new-instance v0, Lcom/google/glass/util/ProtoListFile;

    const-string v1, "user_events_1"

    iget-object v2, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Lcom/google/glass/logging/UserEventService;->USER_EVENT_PARSER:Lcom/google/glass/net/ProtoParser;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/glass/util/ProtoListFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/glass/net/ProtoParser;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->queueFile:Lcom/google/glass/util/ProtoListFile;

    .line 210
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserEventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/glass/net/AndroidHttpRequestDispatcher;

    invoke-direct {v2, p0}, Lcom/google/glass/net/AndroidHttpRequestDispatcher;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Landroid/content/Context;Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 212
    new-instance v0, Lcom/google/glass/logging/UserEventService$5;

    iget-object v1, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/logging/UserEventService$5;-><init>(Lcom/google/glass/logging/UserEventService;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/glass/logging/UserEventService$5;->start()V

    .line 219
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/logging/UserEventService$6;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/UserEventService$6;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 226
    new-instance v0, Lcom/google/glass/logging/UserEventService$7;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/UserEventService$7;-><init>(Lcom/google/glass/logging/UserEventService;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserEventService;->checkinResponseHandler:Lcom/google/glass/net/ProtoResponseHandler;

    .line 242
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 253
    sget-object v0, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcher;->exit()V

    .line 257
    iput-object v3, p0, Lcom/google/glass/logging/UserEventService;->requestDispatcher:Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/glass/logging/UserEventService$8;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/UserEventService$8;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 272
    iget-object v0, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 273
    iput-object v3, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 277
    :cond_1
    iput-object v3, p0, Lcom/google/glass/logging/UserEventService;->events:Ljava/util/List;

    .line 278
    iput-object v3, p0, Lcom/google/glass/logging/UserEventService;->queueFile:Lcom/google/glass/util/ProtoListFile;

    .line 279
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 284
    :try_start_0
    iget-boolean v8, p0, Lcom/google/glass/logging/UserEventService;->isStarted:Z

    if-nez v8, :cond_0

    .line 287
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/glass/logging/UserEventService;->isStarted:Z

    .line 288
    iget-object v8, p0, Lcom/google/glass/logging/UserEventService;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v8}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v8

    const-string v9, "boot"

    invoke-virtual {v8, v9}, Lcom/google/glass/util/BatteryHelper$BatteryState;->getUserEventActionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, data:Ljava/lang/String;
    sget-object v8, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v8, v1}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    .line 292
    .local v0, batteryEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    sget-object v8, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Logging user event [action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/google/glass/userevent/UserEventAction;->BATTERY_STATE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/glass/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    const/4 v8, 0x0

    invoke-direct {p0, v0, v8}, Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V

    .line 297
    .end local v0           #batteryEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    .end local v1           #data:Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_5

    .line 300
    const-string v8, "user_event"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 302
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "user_event"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 303
    .local v3, event:[B
    invoke-static {v3}, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->parseFrom([B)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v7

    .line 304
    .local v7, userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    iget-object v8, v7, Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;->eventType:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 305
    sget-object v8, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v9, "User event logging requested with empty action."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/glass/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    :cond_1
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V
    :try_end_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    .end local v3           #event:[B
    .end local v7           #userEvent:Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;
    :cond_2
    :try_start_2
    const-string v8, "checkin"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 316
    .local v4, isCheckin:Z
    if-eqz v4, :cond_3

    .line 317
    sget-object v8, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v9, "Scheduling checkin."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v8, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/google/glass/logging/UserEventService$9;

    invoke-direct {v9, p0}, Lcom/google/glass/logging/UserEventService$9;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 329
    :cond_3
    const-string v8, "force_flush"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 330
    .local v5, isFlushForced:Z
    if-eqz v5, :cond_4

    .line 331
    sget-object v8, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v9, "Forcing log flush."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v8, v9}, Lcom/google/glass/logging/UserEventService;->log(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;Z)V

    .line 336
    :cond_4
    const-string v8, "force_save_to_disk"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 338
    .local v6, isSaveToDiskForced:Z
    if-eqz v6, :cond_5

    .line 339
    sget-object v8, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    const-string v9, "Forcing save to disk."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iget-object v8, p0, Lcom/google/glass/logging/UserEventService;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/google/glass/logging/UserEventService$10;

    invoke-direct {v9, p0}, Lcom/google/glass/logging/UserEventService$10;-><init>(Lcom/google/glass/logging/UserEventService;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 352
    .end local v4           #isCheckin:Z
    .end local v5           #isFlushForced:Z
    .end local v6           #isSaveToDiskForced:Z
    :cond_5
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 308
    :catch_0
    move-exception v2

    .line 309
    .local v2, e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v8, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "Unable to parse user event proto"

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/google/glass/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 310
    const/4 v8, 0x1

    goto :goto_1

    .line 348
    .end local v2           #e:Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v2

    .line 350
    .local v2, e:Ljava/lang/RuntimeException;
    sget-object v8, Lcom/google/glass/logging/UserEventService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ender (or some other old apk) sent an incompatible proto: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/glass/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
