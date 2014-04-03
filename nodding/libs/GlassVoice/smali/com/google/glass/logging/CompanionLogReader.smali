.class public Lcom/google/glass/logging/CompanionLogReader;
.super Ljava/lang/Object;
.source "CompanionLogReader.java"


# static fields
.field private static final READ_TIMEOUT_MS:J = 0x3e8L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private volatile companionLog:Ljava/lang/String;

.field private final countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final incoming:Landroid/os/Messenger;

.field private final uniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v3, Landroid/os/Messenger;

    new-instance v4, Lcom/google/glass/logging/CompanionLogReader$1;

    invoke-direct {v4, p0}, Lcom/google/glass/logging/CompanionLogReader$1;-><init>(Lcom/google/glass/logging/CompanionLogReader;)V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/google/glass/logging/CompanionLogReader;->incoming:Landroid/os/Messenger;

    .line 47
    const-string v3, "no companion log found."

    iput-object v3, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    .line 49
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 52
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->getNextUniqueId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J

    .line 53
    sget-object v3, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting companion log with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    .line 55
    .local v2, envelope:Lcom/google/glass/companion/Proto$Envelope;
    new-instance v1, Lcom/google/glass/companion/Proto$CompanionInfo;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$CompanionInfo;-><init>()V

    .line 56
    .local v1, companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;
    iget-wide v3, p0, Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v1, Lcom/google/glass/companion/Proto$CompanionInfo;->id:Ljava/lang/Long;

    .line 57
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/google/glass/companion/Proto$CompanionInfo;->requestNetwork:Ljava/lang/Boolean;

    .line 58
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcom/google/glass/companion/Proto$CompanionInfo;->requestLog:Ljava/lang/Boolean;

    .line 59
    iput-object v1, v2, Lcom/google/glass/companion/Proto$Envelope;->companionInfo:Lcom/google/glass/companion/Proto$CompanionInfo;

    .line 60
    iget-object v3, p0, Lcom/google/glass/logging/CompanionLogReader;->incoming:Landroid/os/Messenger;

    invoke-static {v2, v3}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    .line 61
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/google/glass/logging/LoggingApplication;->from(Landroid/content/Context;)Lcom/google/glass/logging/LoggingApplication;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/glass/logging/LoggingApplication;->sendBundleToCompanion(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/CompanionLogReader;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/google/glass/logging/CompanionLogReader;->uniqueId:J

    return-wide v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/logging/CompanionLogReader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/logging/CompanionLogReader;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public read()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    :try_start_0
    sget-object v4, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timeout in reading companion log? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/google/glass/logging/CompanionLogReader;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v6, 0x3e8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    iget-object v1, p0, Lcom/google/glass/logging/CompanionLogReader;->companionLog:Ljava/lang/String;

    return-object v1

    :cond_0
    move v1, v3

    .line 69
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/logging/CompanionLogReader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "InterruptedException in getCompanionLog"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-interface {v1, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
