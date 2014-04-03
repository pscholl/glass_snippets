.class public Lcom/google/glass/voice/HotwordResult;
.super Ljava/lang/Object;
.source "HotwordResult.java"


# instance fields
.field private alignmentInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

.field private final score:F


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceCommand;FLjava/util/List;)V
    .locals 0
    .parameter "recognizedCommand"
    .parameter "score"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/voice/VoiceCommand;",
            "F",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, alignmentInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/glass/voice/HotwordResult;->recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

    .line 26
    iput p2, p0, Lcom/google/glass/voice/HotwordResult;->score:F

    .line 27
    iput-object p3, p0, Lcom/google/glass/voice/HotwordResult;->alignmentInfoList:Ljava/util/List;

    .line 28
    return-void
.end method

.method public static parseAlignmentSegment(Ljava/lang/String;)Lcom/google/glass/voice/AlignmentInfo;
    .locals 8
    .parameter "alignmentSegment"

    .prologue
    .line 74
    const-string v1, " "

    invoke-static {v1}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 75
    .local v7, alignmentParameters:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/glass/voice/AlignmentInfo;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/AlignmentInfo;-><init>(JJLjava/lang/String;F)V

    .line 78
    .local v0, alignmentInfo:Lcom/google/glass/voice/AlignmentInfo;
    return-object v0
.end method

.method public static parseAlignments(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "wordAlignment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, alignmentInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    const-string v4, "\n"

    invoke-static {v4}, Lcom/google/common/base/Splitter;->on(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v2

    .line 89
    .local v2, alignmentSegments:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/google/common/collect/Iterables;->size(Ljava/lang/Iterable;)I

    move-result v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 90
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, alignmentSegment:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/voice/HotwordResult;->parseAlignmentSegment(Ljava/lang/String;)Lcom/google/glass/voice/AlignmentInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v1           #alignmentSegment:Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method getAlignmentInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/voice/HotwordResult;->alignmentInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getPhraseDurationMillis()J
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/google/glass/voice/HotwordResult;->getPhraseEndMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/glass/voice/HotwordResult;->getPhraseStartMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getPhraseEndMillis()J
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/glass/voice/HotwordResult;->getAlignmentInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/AlignmentInfo;

    iget-wide v0, v0, Lcom/google/glass/voice/AlignmentInfo;->endMillis:J

    return-wide v0
.end method

.method public getPhraseStartMillis()J
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/glass/voice/HotwordResult;->getAlignmentInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/AlignmentInfo;

    iget-wide v0, v0, Lcom/google/glass/voice/AlignmentInfo;->startMillis:J

    return-wide v0
.end method

.method public getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/HotwordResult;->recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method

.method public getScore()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/voice/HotwordResult;->score:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordResult [recognizedCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/HotwordResult;->recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", literal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/voice/HotwordResult;->recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/HotwordResult;->recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/voice/HotwordResult;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wordAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/HotwordResult;->alignmentInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method
