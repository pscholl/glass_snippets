.class Lcom/google/glass/voice/network/VoiceSearchContainer$6;
.super Ljava/lang/Object;
.source "VoiceSearchContainer.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/VoiceSearchContainer;->createNetworkParams(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/speech/params/RecognitionEngineParams$NetworkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/VoiceSearchContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$6;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/glass/voice/network/VoiceSearchContainer$6;->this$0:Lcom/google/glass/voice/network/VoiceSearchContainer;

    #getter for: Lcom/google/glass/voice/network/VoiceSearchContainer;->config:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;
    invoke-static {v0}, Lcom/google/glass/voice/network/VoiceSearchContainer;->access$000(Lcom/google/glass/voice/network/VoiceSearchContainer;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->getPairHttpServerInfo()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/glass/voice/network/VoiceSearchContainer$6;->get()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$PairHttpServerInfo;

    move-result-object v0

    return-object v0
.end method
