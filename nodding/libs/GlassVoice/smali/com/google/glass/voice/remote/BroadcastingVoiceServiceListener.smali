.class public Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
.super Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.source "BroadcastingVoiceServiceListener.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$RemoteVoiceListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster",
        "<",
        "Lcom/google/glass/voice/IVoiceServiceListener;",
        ">;",
        "Lcom/google/glass/voice/VoiceServiceListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onResampledAudioData([BII)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 48
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->TOP_OF_STACK:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    new-instance v1, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$3;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;[BII)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 54
    return-void
.end method

.method public onVoiceAmplitudeChanged(D)V
    .locals 2
    .parameter "amplitude"

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->TOP_OF_STACK:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    new-instance v1, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$2;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;D)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 44
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .parameter "command"

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 27
    .local v0, ref:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/voice/VoiceConfig;>;"
    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->TOP_OF_STACK:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    new-instance v2, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$1;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/glass/voice/VoiceCommand;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 33
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceConfig;

    return-object v1
.end method

.method public onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 58
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->TOP_OF_STACK:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    new-instance v1, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$4;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener$4;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;Lcom/google/glass/voice/VoiceConfig;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 64
    return-void
.end method
