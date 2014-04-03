.class public Lcom/google/glass/util/BatteryHelper;
.super Ljava/lang/Object;
.source "BatteryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BatteryHelper$BatteryState;
    }
.end annotation


# static fields
.field private static final PARTIAL_DATA_FLASH_FILE_PATH:Ljava/lang/String; = "/sys/class/i2c-dev/i2c-1/device/1-0055/dump_partial_data_flash"

.field private static final UNKNOWN_LEVEL:I = -0x1

.field private static final UNKNOWN_SCALE:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BatteryHelper;->context:Landroid/content/Context;

    .line 107
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/util/BatteryHelper;->readPartialDataFlash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private static final readPartialDataFlash()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/i2c-dev/i2c-1/device/1-0055/dump_partial_data_flash"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, fl:Ljava/io/File;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 295
    .local v0, fin:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 296
    .local v3, reader:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 298
    .local v2, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 303
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getChargePercent()F
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getChargePercent(Landroid/content/Intent;)I
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 148
    if-nez p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 150
    if-nez p1, :cond_1

    .line 151
    sget-object v4, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unknown battery state."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    :goto_0
    return v3

    .line 156
    :cond_1
    const-string v4, "level"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 157
    .local v1, level:I
    const-string v4, "scale"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 158
    .local v2, scale:I
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 162
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c8

    mul-float v0, v3, v4

    .line 163
    .local v0, batteryPercent:F
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Current battery percent: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0
.end method

.method public getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getCurrentState(Landroid/content/Intent;)Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState(Landroid/content/Intent;)Lcom/google/glass/util/BatteryHelper$BatteryState;
    .locals 4
    .parameter "intent"

    .prologue
    .line 119
    new-instance v0, Lcom/google/glass/util/BatteryHelper$BatteryState;

    invoke-direct {v0}, Lcom/google/glass/util/BatteryHelper$BatteryState;-><init>()V

    .line 121
    .local v0, state:Lcom/google/glass/util/BatteryHelper$BatteryState;
    if-nez p1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 123
    if-nez p1, :cond_0

    .line 124
    sget-object v1, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown battery state."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isPowered(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getTimeToDischarge(Landroid/content/Intent;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->timeToDischarge:J

    goto :goto_0
.end method

.method public getTimeToDischarge()J
    .locals 2

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getTimeToDischarge(Landroid/content/Intent;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeToDischarge(Landroid/content/Intent;)J
    .locals 3
    .parameter "intent"

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 275
    if-nez p1, :cond_0

    .line 276
    sget-object v0, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown battery state."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    const-wide/16 v0, -0x1

    .line 281
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "time_to_empty"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public isCharged()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isCharged(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 183
    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 185
    if-nez p1, :cond_0

    .line 186
    sget-object v2, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unknown battery state."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :goto_0
    return v3

    .line 191
    :cond_0
    const-string v4, "status"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 193
    .local v1, status:I
    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 195
    .local v0, isCharged:Z
    :goto_1
    if-nez v0, :cond_1

    .line 196
    sget-object v4, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Driver is not reporting charged, checking percent."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v4

    const/16 v5, 0x5f

    if-lt v4, v5, :cond_3

    move v0, v2

    .line 200
    :cond_1
    :goto_2
    sget-object v4, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Battery is charged? %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    .line 201
    goto :goto_0

    .end local v0           #isCharged:Z
    :cond_2
    move v0, v3

    .line 193
    goto :goto_1

    .restart local v0       #isCharged:Z
    :cond_3
    move v0, v3

    .line 197
    goto :goto_2
.end method

.method public isCharging()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isCharging(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    if-nez p1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 216
    if-nez p1, :cond_0

    .line 217
    sget-object v2, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unknown battery state."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :goto_0
    return v3

    .line 222
    :cond_0
    const-string v4, "status"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 224
    .local v1, status:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v0, v2

    .line 225
    .local v0, isCharging:Z
    :goto_1
    sget-object v4, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Battery currently charging? %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    .line 226
    goto :goto_0

    .end local v0           #isCharging:Z
    :cond_1
    move v0, v3

    .line 224
    goto :goto_1
.end method

.method public isPowered()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isPowered(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isPowered(Landroid/content/Intent;)Z
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 245
    if-nez p1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 247
    if-nez p1, :cond_0

    .line 248
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unknown battery state."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    :goto_0
    return v4

    .line 253
    :cond_0
    const-string v5, "plugged"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 254
    .local v2, isPlugged:Z
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v1

    .line 255
    .local v1, isCharging:Z
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v0

    .line 257
    .local v0, isCharged:Z
    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    :goto_2
    move v4, v3

    goto :goto_0

    .end local v0           #isCharged:Z
    .end local v1           #isCharging:Z
    .end local v2           #isPlugged:Z
    :cond_2
    move v2, v4

    .line 253
    goto :goto_1

    .restart local v0       #isCharged:Z
    .restart local v1       #isCharging:Z
    .restart local v2       #isPlugged:Z
    :cond_3
    move v3, v4

    .line 257
    goto :goto_2
.end method

.method retrieveCurrentIntent()Landroid/content/Intent;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/glass/util/BatteryHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
