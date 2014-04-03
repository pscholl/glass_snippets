.class public Lcom/google/glass/util/Stopwatch;
.super Ljava/lang/Object;
.source "Stopwatch.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/glass/util/Stopwatch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isRunning:Z

.field private final name:Ljava/lang/String;

.field private startTime:J

.field private totalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/util/Stopwatch$1;

    invoke-direct {v0}, Lcom/google/glass/util/Stopwatch$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/Stopwatch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/Stopwatch;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/Stopwatch;->name:Ljava/lang/String;

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/Stopwatch;->startTime:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/Stopwatch;->totalTime:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/glass/util/Stopwatch;->isRunning:Z

    .line 51
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/util/Stopwatch;->name:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/glass/util/Stopwatch$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/google/glass/util/Stopwatch;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/glass/util/Stopwatch;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalElapsedMilliseconds()J
    .locals 6

    .prologue
    .line 105
    iget-boolean v2, p0, Lcom/google/glass/util/Stopwatch;->isRunning:Z

    if-eqz v2, :cond_0

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 107
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/glass/util/Stopwatch;->totalTime:J

    iget-wide v4, p0, Lcom/google/glass/util/Stopwatch;->startTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/glass/util/Stopwatch;->totalTime:J

    .line 108
    iput-wide v0, p0, Lcom/google/glass/util/Stopwatch;->startTime:J

    .line 110
    .end local v0           #now:J
    :cond_0
    iget-wide v2, p0, Lcom/google/glass/util/Stopwatch;->totalTime:J

    return-wide v2
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/glass/util/Stopwatch;->isRunning:Z

    return v0
.end method

.method public reset()Lcom/google/glass/util/Stopwatch;
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/Stopwatch;->startTime:J

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/util/Stopwatch;->totalTime:J

    .line 90
    return-object p0
.end method

.method public start()Lcom/google/glass/util/Stopwatch;
    .locals 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/glass/util/Stopwatch;->isRunning:Z

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/util/Stopwatch;->startTime:J

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/util/Stopwatch;->isRunning:Z

    .line 64
    :cond_0
    return-object p0
.end method

.method public stop()Lcom/google/glass/util/Stopwatch;
    .locals 6

    .prologue
    .line 73
    iget-boolean v2, p0, Lcom/google/glass/util/Stopwatch;->isRunning:Z

    if-eqz v2, :cond_0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 75
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/glass/util/Stopwatch;->totalTime:J

    iget-wide v4, p0, Lcom/google/glass/util/Stopwatch;->startTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/glass/util/Stopwatch;->totalTime:J

    .line 76
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/glass/util/Stopwatch;->isRunning:Z

    .line 78
    .end local v0           #now:J
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/google/glass/util/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v0

    .line 136
    .local v0, totalElapsedTime:J
    iget-object v2, p0, Lcom/google/glass/util/Stopwatch;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/util/Stopwatch;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v2, p0, Lcom/google/glass/util/Stopwatch;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 124
    iget-object v2, p0, Lcom/google/glass/util/Stopwatch;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    :goto_0
    iget-wide v2, p0, Lcom/google/glass/util/Stopwatch;->startTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    iget-wide v2, p0, Lcom/google/glass/util/Stopwatch;->totalTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-boolean v2, p0, Lcom/google/glass/util/Stopwatch;->isRunning:Z

    if-eqz v2, :cond_1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 131
    return-void

    .line 126
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 130
    goto :goto_1
.end method
