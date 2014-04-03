.class public Lcom/google/glass/voice/VoiceService;
.super Landroid/app/Service;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    }
.end annotation


# static fields
.field private static final EXTRA_MOCK_AUDIO:Ljava/lang/String; = "mock_audio"

.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

.field private mockAudio:[B

.field private serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

.field private voiceEngine:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 98
    new-instance v0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 162
    const-string v0, "VoiceInputCallbacks:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    new-instance v1, Lcom/google/glass/voice/VoiceService$1;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/VoiceService$1;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 169
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 170
    const-string v0, "VoiceServiceListeners:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    new-instance v1, Lcom/google/glass/voice/VoiceService$2;

    invoke-direct {v1, p0, p2}, Lcom/google/glass/voice/VoiceService$2;-><init>(Lcom/google/glass/voice/VoiceService;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 177
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 178
    const-string v0, "VoiceEngine State:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0, p2}, Lcom/google/glass/voice/VoiceEngine;->dumpState(Ljava/io/PrintWriter;)V

    .line 184
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 182
    :cond_0
    :try_start_1
    const-string v0, "[not connected to VoiceEngine]"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 107
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onBind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 131
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    new-instance v0, Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 135
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    .line 136
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-direct {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    .line 138
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->initializeAsynchronously()V

    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 140
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 144
    sget-object v0, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->cleanupSynchronously()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->close()V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->close()V

    .line 155
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 156
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 113
    sget-object v1, Lcom/google/glass/voice/VoiceService;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onStartCommand"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    .line 115
    .local v0, old:[B
    if-eqz p1, :cond_0

    .line 116
    const-string v1, "mock_audio"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    if-eq v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceService;->mockAudio:[B

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceEngine;->setMockAudio([B)V

    .line 125
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
