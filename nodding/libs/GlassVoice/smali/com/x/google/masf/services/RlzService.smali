.class public Lcom/x/google/masf/services/RlzService;
.super Ljava/lang/Object;


# static fields
.field static final RLZ_PREFERENCE:Ljava/lang/String; = "Rlz"

.field private static final RLZ_SERVICE_URI:Ljava/lang/String; = "g:rlz"

.field private static rlzRequested:Z

.field private static theRlz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/x/google/masf/services/RlzService;->rlzRequested:Z

    const-string v0, ""

    sput-object v0, Lcom/x/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getRlz()Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/x/google/masf/services/RlzService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/x/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/x/google/masf/services/RlzService;->loadRlzFromStore()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/x/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/x/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/x/google/masf/services/RlzService;->updateRlz()V

    :cond_1
    sget-object v0, Lcom/x/google/masf/services/RlzService;->theRlz:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized loadRlzFromStore()Ljava/lang/String;
    .locals 4

    const-class v1, Lcom/x/google/masf/services/RlzService;

    monitor-enter v1

    :try_start_0
    const-string v0, "Rlz"

    invoke-static {v0}, Lcom/x/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/x/google/common/Config;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v0

    const-string v2, "Rlz"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    :cond_0
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setRlz(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/x/google/masf/services/RlzService;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/x/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/x/google/masf/services/RlzService;->rlzRequested:Z

    invoke-static {p0}, Lcom/x/google/masf/services/RlzService;->writeRlzToStore(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized updateRlz()V
    .locals 6

    const-class v1, Lcom/x/google/masf/services/RlzService;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/x/google/masf/services/RlzService;->rlzRequested:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/x/google/masf/MobileServiceMux;->getSingleton()Lcom/x/google/masf/MobileServiceMux;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/x/google/masf/services/RlzService;->theRlz:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/x/google/masf/services/RlzService;->loadRlzFromStore()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Lcom/x/google/masf/protocol/PlainRequest;

    const-string v4, "g:rlz"

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v0, v4, v5, v3}, Lcom/x/google/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    new-instance v3, Lcom/x/google/masf/services/RlzService$1;

    invoke-direct {v3}, Lcom/x/google/masf/services/RlzService$1;-><init>()V

    invoke-virtual {v0, v3}, Lcom/x/google/masf/protocol/Request;->setListener(Lcom/x/google/masf/protocol/Request$Listener;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/x/google/masf/MobileServiceMux;->submitRequest(Lcom/x/google/masf/protocol/Request;Z)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/x/google/masf/services/RlzService;->rlzRequested:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized writeRlzToStore(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/x/google/masf/services/RlzService;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v2, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/x/google/common/Config;->getInstance()Lcom/x/google/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/x/google/common/Config;->getPersistentStore()Lcom/x/google/common/io/PersistentStore;

    move-result-object v2

    const-string v3, "Rlz"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/x/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z

    invoke-interface {v2}, Lcom/x/google/common/io/PersistentStore;->savePreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
