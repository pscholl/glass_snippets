.class public final Lcom/google/glass/input/z;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final b:Lcom/google/glass/voice/VoiceCommand;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/input/z;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcom/google/glass/input/z;->b:Lcom/google/glass/voice/VoiceCommand;

    return-void
.end method

.method static synthetic a(Lcom/google/glass/input/z;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/z;->a:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic b(Lcom/google/glass/input/z;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/input/z;->b:Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/input/z;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
