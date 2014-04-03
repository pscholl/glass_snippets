.class Lcom/google/glass/location/LocationRequest;
.super Ljava/lang/Object;
.source "LocationRequest.java"


# static fields
.field private static final KEY_LISTENER_ID:Ljava/lang/String; = "listenerId"

.field private static final KEY_MIN_DISTANCE:Ljava/lang/String; = "minDistance"

.field private static final KEY_MIN_TIME:Ljava/lang/String; = "minTime"

.field private static final KEY_PID:Ljava/lang/String; = "pid"

.field private static final KEY_PROVIDER:Ljava/lang/String; = "provider"


# instance fields
.field private final listenerId:I

.field private final minDistance:F

.field private final minTime:J

.field private final pid:I

.field private final provider:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;JF)V
    .locals 0
    .parameter "pid"
    .parameter "listenerId"
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/google/glass/location/LocationRequest;->pid:I

    .line 34
    iput p2, p0, Lcom/google/glass/location/LocationRequest;->listenerId:I

    .line 35
    iput-object p3, p0, Lcom/google/glass/location/LocationRequest;->provider:Ljava/lang/String;

    .line 36
    iput-wide p4, p0, Lcom/google/glass/location/LocationRequest;->minTime:J

    .line 37
    iput p6, p0, Lcom/google/glass/location/LocationRequest;->minDistance:F

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/google/glass/location/LocationRequest;)V
    .locals 7
    .parameter "other"

    .prologue
    .line 47
    iget v1, p1, Lcom/google/glass/location/LocationRequest;->pid:I

    iget v2, p1, Lcom/google/glass/location/LocationRequest;->listenerId:I

    iget-object v3, p1, Lcom/google/glass/location/LocationRequest;->provider:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/glass/location/LocationRequest;->minTime:J

    iget v6, p1, Lcom/google/glass/location/LocationRequest;->minDistance:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/location/LocationRequest;-><init>(IILjava/lang/String;JF)V

    .line 48
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JF)V
    .locals 7
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"

    .prologue
    const/4 v1, 0x0

    .line 42
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/location/LocationRequest;-><init>(IILjava/lang/String;JF)V

    .line 43
    return-void
.end method

.method static fromBundle(Landroid/os/Bundle;)Lcom/google/glass/location/LocationRequest;
    .locals 7
    .parameter "bundle"

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/location/LocationRequest;

    const-string v1, "pid"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "listenerId"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "provider"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "minTime"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "minDistance"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/location/LocationRequest;-><init>(IILjava/lang/String;JF)V

    goto :goto_0
.end method


# virtual methods
.method getListenerId()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/glass/location/LocationRequest;->listenerId:I

    return v0
.end method

.method getMinDistance()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/glass/location/LocationRequest;->minDistance:F

    return v0
.end method

.method getMinTime()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/google/glass/location/LocationRequest;->minTime:J

    return-wide v0
.end method

.method getPid()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/glass/location/LocationRequest;->pid:I

    return v0
.end method

.method getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/location/LocationRequest;->provider:Ljava/lang/String;

    return-object v0
.end method

.method matchesListener(Lcom/google/glass/location/LocationRequest;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 62
    iget v0, p1, Lcom/google/glass/location/LocationRequest;->pid:I

    iget v1, p0, Lcom/google/glass/location/LocationRequest;->pid:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/google/glass/location/LocationRequest;->listenerId:I

    iget v1, p0, Lcom/google/glass/location/LocationRequest;->listenerId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 92
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "pid"

    iget v2, p0, Lcom/google/glass/location/LocationRequest;->pid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string v1, "listenerId"

    iget v2, p0, Lcom/google/glass/location/LocationRequest;->listenerId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string v1, "provider"

    iget-object v2, p0, Lcom/google/glass/location/LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "minTime"

    iget-wide v2, p0, Lcom/google/glass/location/LocationRequest;->minTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 97
    const-string v1, "minDistance"

    iget v2, p0, Lcom/google/glass/location/LocationRequest;->minDistance:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 98
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/location/LocationRequest;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listenerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/location/LocationRequest;->listenerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/location/LocationRequest;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/location/LocationRequest;->minTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minDistance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/location/LocationRequest;->minDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
