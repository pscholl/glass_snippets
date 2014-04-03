.class public Lcom/google/glass/util/BatteryHelper$BatteryState;
.super Ljava/lang/Object;
.source "BatteryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BatteryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryState"
.end annotation


# static fields
.field public static final PERCENT_CHARGED:I = 0x5f

.field public static final PERCENT_LOW:I = 0xa

.field public static final PERCENT_MEDIUM:I = 0x1e

.field public static final PERCENT_MINIMUM:I = 0x1

.field public static final PERCENT_UNKNOWN:I = -0x1

.field public static final TIME_TO_EMPTY_UNKNOWN:I = -0x1


# instance fields
.field public isCharged:Z

.field public isCharging:Z

.field public isPowered:Z

.field public percent:F

.field public timeToDischarge:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserEventActionData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    .line 82
    const-string v1, ""

    .line 84
    .local v1, gasGaugeData:Ljava/lang/String;
    :try_start_0
    #calls: Lcom/google/glass/util/BatteryHelper;->readPartialDataFlash()Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/BatteryHelper;->access$000()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    :goto_0
    const-string v2, "a"

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "p"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "t"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->timeToDischarge:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "cg"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-boolean v5, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "cd"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-boolean v5, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "ip"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget-boolean v5, p0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "gg"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    aput-object v1, v3, v4

    invoke-static {v2, p1, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/util/BatteryHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Error reading gas gauge data"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
