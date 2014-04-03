.class public final Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alternate"
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x6

.field public static final TEXT_FIELD_NUMBER:I = 0x5


# instance fields
.field private cachedSize:I

.field private confidence_:F

.field private hasConfidence:Z

.field private hasText:Z

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 695
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/String;

    .line 712
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F

    .line 750
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->cachedSize:I

    .line 690
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1

    .prologue
    .line 727
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->clearText()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 728
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->clearConfidence()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    .line 729
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->cachedSize:I

    .line 730
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasConfidence:Z

    .line 722
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F

    .line 723
    return-object p0
.end method

.method public clearText()Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasText:Z

    .line 705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/String;

    .line 706
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 753
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->cachedSize:I

    if-gez v0, :cond_0

    .line 755
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getSerializedSize()I

    .line 757
    :cond_0
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 764
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasConfidence()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getConfidence()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 771
    :cond_1
    iput v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->cachedSize:I

    .line 772
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasConfidence:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasText:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 734
    iget-boolean v1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasText:Z

    if-nez v1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return v0

    .line 735
    :cond_1
    iget-boolean v1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasConfidence:Z

    if-eqz v1, :cond_0

    .line 736
    const/4 v0, 0x1

    goto :goto_0
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
    .line 687
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 781
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 785
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    :sswitch_0
    return-object p0

    .line 791
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->setText(Ljava/lang/String;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    goto :goto_0

    .line 795
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->setConfidence(F)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    goto :goto_0

    .line 781
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
        0x35 -> :sswitch_2
    .end sparse-switch
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 810
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 804
    new-instance v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    check-cast v0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;

    return-object v0
.end method

.method public setConfidence(F)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter "value"

    .prologue
    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasConfidence:Z

    .line 717
    iput p1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->confidence_:F

    .line 718
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;
    .locals 1
    .parameter "value"

    .prologue
    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasText:Z

    .line 700
    iput-object p1, p0, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->text_:Ljava/lang/String;

    .line 701
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
    .line 742
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 746
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$RecognitionAlternates$Slot$Alternate;->getConfidence()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 748
    :cond_1
    return-void
.end method
