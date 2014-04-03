.class Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;
.super Ljava/lang/Object;
.source "SpeechLibFactoryImpl.java"

# interfaces
.implements Lcom/google/android/speech/EngineSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->buildEngineSelector(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

.field final synthetic val$engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

.field final synthetic val$sessionParams:Lcom/google/android/speech/params/SessionParams;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/SpeechLibFactoryImpl;Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->this$0:Lcom/google/glass/voice/network/SpeechLibFactoryImpl;

    iput-object p2, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->val$engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    iput-object p3, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->val$sessionParams:Lcom/google/android/speech/params/SessionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEngineList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 55
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 56
    .local v0, engines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v1, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->val$engineParams:Lcom/google/android/speech/params/RecognitionEngineParams;

    iget-object v2, p0, Lcom/google/glass/voice/network/SpeechLibFactoryImpl$1;->val$sessionParams:Lcom/google/android/speech/params/SessionParams;

    #calls: Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->shouldUseMusicDetectorEngine(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Z
    invoke-static {v1, v2}, Lcom/google/glass/voice/network/SpeechLibFactoryImpl;->access$000(Lcom/google/android/speech/params/RecognitionEngineParams;Lcom/google/android/speech/params/SessionParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-object v0
.end method

.method public getPrimaryEngine()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x2

    return v0
.end method

.method public getSecondaryEngine()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method
