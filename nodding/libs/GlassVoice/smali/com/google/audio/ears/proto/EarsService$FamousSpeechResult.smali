.class public final Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FamousSpeechResult"
.end annotation


# static fields
.field public static final SPEAKER_NAME_FIELD_NUMBER:I = 0x1

.field public static final SPEECH_TITLE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasSpeakerName:Z

.field private hasSpeechTitle:Z

.field private speakerName_:Ljava/lang/String;

.field private speechTitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2624
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2629
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    .line 2646
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    .line 2682
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->cachedSize:I

    .line 2624
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2742
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2736
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1

    .prologue
    .line 2661
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->clearSpeakerName()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    .line 2662
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->clearSpeechTitle()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    .line 2663
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->cachedSize:I

    .line 2664
    return-object p0
.end method

.method public clearSpeakerName()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1

    .prologue
    .line 2638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeakerName:Z

    .line 2639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    .line 2640
    return-object p0
.end method

.method public clearSpeechTitle()Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1

    .prologue
    .line 2655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeechTitle:Z

    .line 2656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    .line 2657
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2685
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2687
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->getSerializedSize()I

    .line 2689
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2694
    const/4 v0, 0x0

    .line 2695
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeakerName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2696
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->getSpeakerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2699
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeechTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2700
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->getSpeechTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2703
    :cond_1
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->cachedSize:I

    .line 2704
    return v0
.end method

.method public getSpeakerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeechTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSpeakerName()Z
    .locals 1

    .prologue
    .line 2631
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeakerName:Z

    return v0
.end method

.method public hasSpeechTitle()Z
    .locals 1

    .prologue
    .line 2648
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeechTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2668
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2712
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2713
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2717
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2718
    :sswitch_0
    return-object p0

    .line 2723
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->setSpeakerName(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    goto :goto_0

    .line 2727
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->setSpeechTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    goto :goto_0

    .line 2713
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2621
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;

    move-result-object v0

    return-object v0
.end method

.method public setSpeakerName(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeakerName:Z

    .line 2634
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speakerName_:Ljava/lang/String;

    .line 2635
    return-object p0
.end method

.method public setSpeechTitle(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 2650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeechTitle:Z

    .line 2651
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->speechTitle_:Ljava/lang/String;

    .line 2652
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2674
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeakerName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2675
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->getSpeakerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2677
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->hasSpeechTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2678
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$FamousSpeechResult;->getSpeechTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2680
    :cond_1
    return-void
.end method
