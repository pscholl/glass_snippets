.class public final Lcom/x/google/common/StaticUtil;
.super Ljava/lang/Object;


# static fields
.field private static final BOOLEAN_CLASS:I = 0x0

.field private static final EMERGENCY_MEMORY_SIZE:I = 0x8000

.field private static final INTEGER_CLASS:I = 0x1

.field private static IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z = false

.field private static final LONG_CLASS:I = 0x2

.field public static final RECORD_STORE_FULL:I = -0x2

.field public static final RECORD_STORE_WRITE_FAILED:I = -0x1

.field private static REFERENCE_CLEANUP_TIME_OUT_MSEC:J = 0x0L

.field private static final STRING_CLASS:I = 0x3

.field private static emergencyMemory:[B

.field private static final outOfMemoryHandlers:Ljava/util/Vector;

.field private static referenceCleanupTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/x/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/x/google/common/StaticUtil;->REFERENCE_CLEANUP_TIME_OUT_MSEC:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/x/google/common/StaticUtil;->referenceCleanupTime:J

    invoke-static {}, Lcom/x/google/common/StaticUtil;->allocateEmergencyMemory()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static allocateEmergencyMemory()V
    .locals 1

    sget-object v0, Lcom/x/google/common/StaticUtil;->emergencyMemory:[B

    if-nez v0, :cond_0

    const v0, 0x8000

    :try_start_0
    new-array v0, v0, [B

    sput-object v0, Lcom/x/google/common/StaticUtil;->emergencyMemory:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteRecordStore(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/x/google/common/StaticUtil;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/x/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getPersistentStore()Lcom/x/google/common/io/PersistentStore;
    .locals 1

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemPropertyAsInt(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static handleLowOnMemory()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/x/google/common/StaticUtil;->handleOutOfMemory(Z)V

    return-void
.end method

.method public static handleOutOfMemory()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/x/google/common/StaticUtil;->handleOutOfMemory(Z)V

    return-void
.end method

.method private static handleOutOfMemory(Z)V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/x/google/common/StaticUtil;->emergencyMemory:[B

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eqz p0, :cond_1

    const-string v0, "LowOnMemory"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/x/google/common/StaticUtil;->removeEmptyReferences()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/common/OutOfMemoryHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/x/google/common/OutOfMemoryHandler;->handleOutOfMemory(Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    const-string v0, "OutOfMemory"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/x/google/common/StaticUtil;->allocateEmergencyMemory()V

    return-void
.end method

.method public static isEmergencyMemoryAvailable()Z
    .locals 1

    sget-object v0, Lcom/x/google/common/StaticUtil;->emergencyMemory:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadPropertiesFile(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v0
.end method

.method public static readBlockAsDataInput(Lcom/x/google/common/io/PersistentStore;Ljava/lang/String;)Ljava/io/DataInput;
    .locals 3

    invoke-interface {p0, p1}, Lcom/x/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static readBlockAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .locals 1

    invoke-static {}, Lcom/x/google/common/StaticUtil;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/x/google/common/StaticUtil;->readBlockAsDataInput(Lcom/x/google/common/io/PersistentStore;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized readOneRecordRms(Ljava/lang/String;)[B
    .locals 2

    const-class v1, Lcom/x/google/common/StaticUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/x/google/common/StaticUtil;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/x/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized readOneRecordRmsAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .locals 2

    const-class v0, Lcom/x/google/common/StaticUtil;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/x/google/common/StaticUtil;->readBlockAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static readPreference(Ljava/lang/String;)[B
    .locals 1

    invoke-static {}, Lcom/x/google/common/StaticUtil;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/x/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readPreferenceAsBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/x/google/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_0
    return p1
.end method

.method public static readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    .locals 3

    invoke-static {}, Lcom/x/google/common/StaticUtil;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/x/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static readPreferenceAsInt(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/x/google/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method public static readPreferenceAsLong(Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/x/google/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method private static readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/x/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :try_start_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0

    :pswitch_0
    new-instance v1, Ljava/lang/Boolean;

    invoke-interface {v2}, Ljava/io/DataInput;->readBoolean()Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/Long;

    invoke-interface {v2}, Ljava/io/DataInput;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    :pswitch_3
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static readPreferenceAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/x/google/common/StaticUtil;->readPreferenceAsObject(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static registerFirstOutOfMemoryHandler(Lcom/x/google/common/OutOfMemoryHandler;)V
    .locals 3

    sget-boolean v0, Lcom/x/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/x/google/common/StaticUtil;->removeEmptyReferences()V

    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public static registerOutOfMemoryHandler(Lcom/x/google/common/OutOfMemoryHandler;)V
    .locals 2

    sget-boolean v0, Lcom/x/google/common/StaticUtil;->IS_REGISTER_OUT_OF_MEMORY_HANDLER:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/x/google/common/StaticUtil;->removeEmptyReferences()V

    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static removeEmptyReferences()V
    .locals 6

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getClock()Lcom/x/google/common/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/Clock;->relativeTimeMillis()J

    move-result-wide v2

    sget-wide v0, Lcom/x/google/common/StaticUtil;->referenceCleanupTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/x/google/common/StaticUtil;->referenceCleanupTime:J

    sub-long v0, v2, v0

    sget-wide v4, Lcom/x/google/common/StaticUtil;->REFERENCE_CLEANUP_TIME_OUT_MSEC:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    sput-wide v2, Lcom/x/google/common/StaticUtil;->referenceCleanupTime:J

    :cond_3
    return-void
.end method

.method public static removeOutOfMemoryHandler(Lcom/x/google/common/OutOfMemoryHandler;)V
    .locals 2

    invoke-static {}, Lcom/x/google/common/StaticUtil;->removeEmptyReferences()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/x/google/common/StaticUtil;->outOfMemoryHandlers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static savePreferenceAsBoolean(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/x/google/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static savePreferenceAsInt(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0}, Lcom/x/google/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static savePreferenceAsLong(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-static {p0, v0}, Lcom/x/google/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeBoolean(Z)V

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/x/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_1

    :cond_3
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public static savePreferenceAsString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/x/google/common/StaticUtil;->savePreferenceAsObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static savePreferences()V
    .locals 1

    invoke-static {}, Lcom/x/google/common/StaticUtil;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/x/google/common/io/PersistentStore;->savePreferences()V

    return-void
.end method

.method public static setPreference(Ljava/lang/String;[B)V
    .locals 1

    invoke-static {}, Lcom/x/google/common/StaticUtil;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    return-void
.end method

.method public static setRegisterOutOfMemoryHandlerForTest(Z)V
    .locals 0

    return-void
.end method

.method public static sleep(J)V
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
