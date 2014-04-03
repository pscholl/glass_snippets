.class Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$13;
.super Ljava/lang/Object;
.source "BroadcastingVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$RemoteVoiceInputCallbackOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

.field final synthetic val$source:Lcom/google/glass/voice/network/SpeechLevelSource;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$13;->this$0:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    iput-object p2, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$13;->val$source:Lcom/google/glass/voice/network/SpeechLevelSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doOperation(Landroid/os/IInterface;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$13;->doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public doOperation(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 1
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$13$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$13$1;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$13;)V

    invoke-interface {p1, v0}, Lcom/google/glass/voice/network/IVoiceInputCallback;->setSpeechLevelSource(Lcom/google/glass/voice/network/ISpeechLevelSource;)V

    .line 188
    return-void
.end method
