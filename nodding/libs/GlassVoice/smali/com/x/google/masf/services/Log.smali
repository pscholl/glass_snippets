.class public Lcom/x/google/masf/services/Log;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/x/google/masf/services/Log$LogRecord;
    }
.end annotation


# static fields
.field public static final AD_EVENT_BUBBLE_VIEWED:S = 0x21s

.field public static final AD_EVENT_DETAIS_VIEWED:S = 0x22s

.field public static final AD_EVENT_DIRECTION_REQUEST:S = 0x1fs

.field public static final AD_EVENT_PHONE_CALL:S = 0x1es

.field public static final AD_EVENT_WEBSITE_CLICK:S = 0x20s

.field private static final AVERAGE_ENTRY_CHARS:I = 0x28

.field private static final EVENT_LOG_PREFERENCE:Ljava/lang/String; = "EVENT_LOG"

.field public static final EVENT_LOG_REQUEST_TYPE:I = 0xa

.field public static final EVENT_TYPE_BUBBLE_VIEW:S = 0x12s

.field public static final EVENT_TYPE_CLICK_TO_CALL:S = 0x1s

.field public static final EVENT_TYPE_DIRECTIONS:S = 0x4s

.field public static final EVENT_TYPE_HELP_VIEW:S = 0x6s

.field public static final EVENT_TYPE_HISTORY_SELECT:S = 0x11s

.field public static final EVENT_TYPE_MENU_EVENT:S = 0x10s

.field public static final EVENT_TYPE_MOVE_MAP:S = 0x3s

.field public static final EVENT_TYPE_SCREENSTATE_POP:S = 0x15s

.field public static final EVENT_TYPE_SCREENSTATE_PUSH:S = 0x14s

.field public static final EVENT_TYPE_SEARCH:S = 0x2s

.field public static final EVENT_TYPE_SEARCH_DETAILS:S = 0x5s

.field public static final EVENT_TYPE_SEND_SMS:S = 0x7s

.field public static final EVENT_TYPE_WIZARD_ENTER_STATE:S = 0x13s

.field private static final FLUSH_WAIT_TIME:J = 0x7d0L

.field private static final MAX_ENTRIES:I = 0x97

.field private static final MAX_EVENT_LOG_LENGTH:I = 0x258

.field private static final MAX_EXCEPTION_LENGTH:I = 0x12c

.field public static final SOURCE_ENGINE:Ljava/lang/String; = "ENGINE"

.field public static final SOURCE_FLASH:Ljava/lang/String; = "FLASH"

.field public static final SOURCE_GPS:Ljava/lang/String; = "GPS"

.field public static final SOURCE_MAP:Ljava/lang/String; = "MAP"

.field public static final SOURCE_MEMORY:Ljava/lang/String; = "MEMORY"

.field public static final SOURCE_MENU:Ljava/lang/String; = "MENU"

.field public static final SOURCE_REQUEST:Ljava/lang/String; = "REQUEST"

.field public static final SOURCE_STATS:Ljava/lang/String; = "STATS"

.field public static final SOURCE_UI:Ljava/lang/String; = "UI"

.field public static final SOURCE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final TARGET_ENTRIES:I = 0x32

.field private static immediateFlush:Z

.field private static lastEventTimeMillis:J

.field private static final lastExceptionString:Ljava/lang/StringBuffer;

.field private static final logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

.field private static logEntryCount:I

.field private static logEntryFirst:I

.field private static logEntryNext:I

.field private static final timers:Ljava/util/Hashtable;

.field static uploadCompleteLock:Ljava/lang/Object;

.field private static uploadEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x97

    const/4 v0, 0x0

    const/16 v1, 0x14

    sput v1, Lcom/x/google/masf/services/Log;->uploadEntries:I

    new-array v1, v3, [Lcom/x/google/masf/services/Log$LogRecord;

    sput-object v1, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    sput v0, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    sput v0, Lcom/x/google/masf/services/Log;->logEntryNext:I

    sput v0, Lcom/x/google/masf/services/Log;->logEntryCount:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/x/google/masf/services/Log;->uploadCompleteLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/x/google/masf/services/Log;->timers:Ljava/util/Hashtable;

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    new-instance v2, Lcom/x/google/masf/services/Log$LogRecord;

    invoke-direct {v2}, Lcom/x/google/masf/services/Log$LogRecord;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/x/google/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/x/google/masf/services/Log;->lastEventTimeMillis:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEvent(SLjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/x/google/masf/services/Log;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v1

    const-string v0, "EVENT_LOG"

    invoke-interface {v1, v0}, Lcom/x/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v4, v5}, Lcom/x/google/masf/services/Log;->resetEventLog(J)V

    const-string v0, "EVENT_LOG"

    invoke-interface {v1, v0}, Lcom/x/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    :cond_0
    :goto_0
    array-length v1, v0

    if-le v1, v8, :cond_2

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v1, v6

    int-to-short v1, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x2

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v7, v0, v1, v8}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v7, p0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-wide v0, Lcom/x/google/masf/services/Log;->lastEventTimeMillis:J

    sub-long v0, v4, v0

    const-wide/16 v8, 0x64

    div-long/2addr v0, v8

    const-wide/32 v8, 0xffff

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v7, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/x/google/masf/services/Log;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    const-string v1, "EVENT_LOG"

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-interface {v0, v1, v6}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    sput-wide v4, Lcom/x/google/masf/services/Log;->lastEventTimeMillis:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    :goto_2
    return v2

    :cond_1
    array-length v6, v0

    const/16 v7, 0x258

    if-le v6, v7, :cond_0

    invoke-static {}, Lcom/x/google/masf/services/Log;->uploadEventLog()V

    const-string v0, "EVENT_LOG"

    invoke-interface {v1, v0}, Lcom/x/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public static addExceptionString(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/x/google/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/x/google/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rsub-int v1, v1, 0x12c

    if-gez v1, :cond_2

    :goto_1
    if-le v3, v0, :cond_1

    sget-object v1, Lcom/x/google/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    sget-object v0, Lcom/x/google/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static addLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget v0, Lcom/x/google/masf/services/Log;->logEntryCount:I

    const/16 v1, 0x96

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No room for log entry in buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    sget v1, Lcom/x/google/masf/services/Log;->logEntryNext:I

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/x/google/masf/services/Log$LogRecord;->timestamp:J

    iput-object p0, v0, Lcom/x/google/masf/services/Log$LogRecord;->source:Ljava/lang/String;

    iput-object p1, v0, Lcom/x/google/masf/services/Log$LogRecord;->description:Ljava/lang/String;

    sget v0, Lcom/x/google/masf/services/Log;->logEntryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/x/google/masf/services/Log;->logEntryCount:I

    sget v0, Lcom/x/google/masf/services/Log;->logEntryNext:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/x/google/masf/services/Log;->logEntryNext:I

    sget v0, Lcom/x/google/masf/services/Log;->logEntryNext:I

    const/16 v1, 0x97

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/x/google/masf/services/Log;->logEntryNext:I

    :cond_1
    return-void
.end method

.method public static clear()V
    .locals 2

    sget-object v1, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/x/google/masf/services/Log;->clearLogEntries()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static clearLogEntries()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    sput v0, Lcom/x/google/masf/services/Log;->logEntryNext:I

    sput v0, Lcom/x/google/masf/services/Log;->logEntryCount:I

    :goto_0
    sget-object v1, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/x/google/masf/services/Log$LogRecord;->timestamp:J

    iput-object v4, v1, Lcom/x/google/masf/services/Log$LogRecord;->source:Ljava/lang/String;

    iput-object v4, v1, Lcom/x/google/masf/services/Log$LogRecord;->description:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static endTimer(Ljava/lang/String;)J
    .locals 5

    sget-object v0, Lcom/x/google/masf/services/Log;->timers:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: no matching timer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/services/Log;->log(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    goto :goto_0
.end method

.method public static endTimerAndLog(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/x/google/masf/services/Log;->endTimerAndLogConditionally(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static endTimerAndLogConditionally(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 4

    invoke-static {p1}, Lcom/x/google/masf/services/Log;->endTimer(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(timer) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/x/google/masf/services/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-wide v0
.end method

.method public static flush()V
    .locals 0

    return-void
.end method

.method public static flushAndWait()V
    .locals 0

    return-void
.end method

.method public static getLastExceptionString()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/x/google/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/x/google/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/x/google/masf/services/Log;->lastExceptionString:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLog()Ljava/lang/String;
    .locals 1

    const v0, 0x7fffffff

    invoke-static {v0}, Lcom/x/google/masf/services/Log;->getLog(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLog(I)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x97

    sget-object v3, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    monitor-enter v3

    const/16 v0, 0x97

    :try_start_0
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v1, 0x28

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    sget v0, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    rsub-int v2, v1, 0x97

    add-int/2addr v0, v2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_1

    if-lt v0, v6, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/x/google/masf/services/Log$LogRecord;->appendToBuffer(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getLogEntries()Ljava/util/Vector;
    .locals 5

    const/4 v1, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    sget v0, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    move v2, v0

    move v0, v1

    :goto_0
    sget v4, Lcom/x/google/masf/services/Log;->logEntryCount:I

    if-ge v0, v4, :cond_1

    sget-object v4, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/x/google/masf/services/Log$LogRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x97

    if-lt v2, v4, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private static getPersistentStore()Lcom/x/google/common/io/PersistentStore;
    .locals 1

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNKNOWN"

    invoke-static {v0, p0}, Lcom/x/google/masf/services/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v1, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, p1}, Lcom/x/google/masf/services/Log;->addLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/x/google/masf/services/Log;->logEntryCount:I

    const/16 v2, 0x97

    if-lt v0, v2, :cond_0

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/x/google/masf/services/Log;->truncateLog(I)V

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Out of memory during logging!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static logException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/x/google/masf/services/Log;->addExceptionString(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/x/google/masf/services/Log;->logQuietException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static logQuietException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/x/google/masf/services/Log;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0, p1}, Lcom/x/google/masf/services/Log;->sendException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static print()V
    .locals 6

    const/4 v1, 0x0

    sget-object v3, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    monitor-enter v3

    :try_start_0
    sget v0, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    move v2, v1

    :goto_0
    sget v4, Lcom/x/google/masf/services/Log;->logEntryCount:I

    if-ge v2, v4, :cond_1

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v5, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x97

    if-lt v0, v4, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static resetEventLog(J)V
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0, p0, p1}, Ljava/io/DataOutputStream;->writeLong(J)V

    sput-wide p0, Lcom/x/google/masf/services/Log;->lastEventTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/x/google/masf/services/Log;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    const-string v2, "EVENT_LOG"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/x/google/masf/services/Log;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    const-string v2, "EVENT_LOG"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/x/google/masf/services/Log;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "EVENT_LOG"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    throw v0
.end method

.method private static sendException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public static setImmediateFlush(Z)V
    .locals 0

    sput-boolean p0, Lcom/x/google/masf/services/Log;->immediateFlush:Z

    return-void
.end method

.method public static setUploadEntries(I)V
    .locals 0

    sput p0, Lcom/x/google/masf/services/Log;->uploadEntries:I

    return-void
.end method

.method public static startTimer(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sget-object v1, Lcom/x/google/masf/services/Log;->timers:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static takeLogEntry()Lcom/x/google/masf/services/Log$LogRecord;
    .locals 3

    sget v0, Lcom/x/google/masf/services/Log;->logEntryCount:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No log entries in buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/x/google/masf/services/Log;->logEntries:[Lcom/x/google/masf/services/Log$LogRecord;

    sget v1, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    aget-object v0, v0, v1

    sget v1, Lcom/x/google/masf/services/Log;->logEntryCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/x/google/masf/services/Log;->logEntryCount:I

    sget v1, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    sget v1, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    const/16 v2, 0x97

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    sput v1, Lcom/x/google/masf/services/Log;->logEntryFirst:I

    :cond_1
    return-object v0
.end method

.method private static truncateLog(I)V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    sget v0, Lcom/x/google/masf/services/Log;->logEntryCount:I

    if-le v0, p0, :cond_0

    invoke-static {}, Lcom/x/google/masf/services/Log;->takeLogEntry()Lcom/x/google/masf/services/Log$LogRecord;

    move-result-object v0

    iput-object v1, v0, Lcom/x/google/masf/services/Log$LogRecord;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/x/google/masf/services/Log$LogRecord;->description:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static uploadEventLog()V
    .locals 0

    return-void
.end method
