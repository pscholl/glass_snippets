.class public Lcom/google/glass/voice/HybridHotwordRecognizer;
.super Ljava/lang/Object;
.source "HybridHotwordRecognizer.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# instance fields
.field private final recognizers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, recognizers:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    .line 32
    return-void
.end method

.method public varargs constructor <init>([Lcom/google/glass/voice/HotwordRecognizer;)V
    .locals 1
    .parameter "recognizers"

    .prologue
    .line 23
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/HybridHotwordRecognizer;-><init>(Ljava/util/List;)V

    .line 24
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 3

    .prologue
    .line 55
    iget-object v2, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 56
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1}, Lcom/google/glass/voice/HotwordRecognizer;->activate()V

    goto :goto_0

    .line 58
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 48
    iget-object v2, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 49
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1}, Lcom/google/glass/voice/HotwordRecognizer;->deactivate()V

    goto :goto_0

    .line 51
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 63
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1}, Lcom/google/glass/voice/HotwordRecognizer;->destroy()V

    goto :goto_0

    .line 65
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    return-void
.end method

.method getRecognizers()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    return-object v0
.end method

.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "str"

    .prologue
    .line 69
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HybridHotwordRecognizer [recognizers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;
    .locals 4
    .parameter "audio"
    .parameter "sampleRate"

    .prologue
    .line 36
    iget-object v3, p0, Lcom/google/glass/voice/HybridHotwordRecognizer;->recognizers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 37
    .local v1, recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v1, p1, p2, p3}, Lcom/google/glass/voice/HotwordRecognizer;->writeAudio(Ljava/nio/ByteBuffer;J)Lcom/google/glass/voice/HotwordResult;

    move-result-object v2

    .line 38
    .local v2, result:Lcom/google/glass/voice/HotwordResult;
    if-eqz v2, :cond_0

    .line 43
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .end local v2           #result:Lcom/google/glass/voice/HotwordResult;
    :goto_1
    return-object v2

    .line 41
    .restart local v1       #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .restart local v2       #result:Lcom/google/glass/voice/HotwordResult;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 43
    .end local v1           #recognizer:Lcom/google/glass/voice/HotwordRecognizer;
    .end local v2           #result:Lcom/google/glass/voice/HotwordResult;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
