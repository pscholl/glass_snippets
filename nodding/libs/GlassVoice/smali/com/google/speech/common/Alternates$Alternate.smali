.class public final Lcom/google/speech/common/Alternates$Alternate;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alternate"
.end annotation


# static fields
.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x2

.field public static final TEXT_FIELD_NUMBER:I = 0x1


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
    .line 553
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/Alternates$Alternate;->text_:Ljava/lang/String;

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$Alternate;->confidence_:F

    .line 612
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$Alternate;->cachedSize:I

    .line 553
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$Alternate;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Lcom/google/speech/common/Alternates$Alternate;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$Alternate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$Alternate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$Alternate;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 666
    new-instance v0, Lcom/google/speech/common/Alternates$Alternate;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$Alternate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$Alternate;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$Alternate;

    check-cast v0, Lcom/google/speech/common/Alternates$Alternate;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/common/Alternates$Alternate;
    .locals 1

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->clearText()Lcom/google/speech/common/Alternates$Alternate;

    .line 591
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->clearConfidence()Lcom/google/speech/common/Alternates$Alternate;

    .line 592
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$Alternate;->cachedSize:I

    .line 593
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/common/Alternates$Alternate;
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$Alternate;->hasConfidence:Z

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$Alternate;->confidence_:F

    .line 586
    return-object p0
.end method

.method public clearText()Lcom/google/speech/common/Alternates$Alternate;
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$Alternate;->hasText:Z

    .line 568
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/Alternates$Alternate;->text_:Ljava/lang/String;

    .line 569
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/google/speech/common/Alternates$Alternate;->cachedSize:I

    if-gez v0, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->getSerializedSize()I

    .line 619
    :cond_0
    iget v0, p0, Lcom/google/speech/common/Alternates$Alternate;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/google/speech/common/Alternates$Alternate;->confidence_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->hasConfidence()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->getConfidence()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 633
    :cond_1
    iput v0, p0, Lcom/google/speech/common/Alternates$Alternate;->cachedSize:I

    .line 634
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/speech/common/Alternates$Alternate;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 577
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$Alternate;->hasConfidence:Z

    return v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$Alternate;->hasText:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/google/speech/common/Alternates$Alternate;->hasText:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 598
    :goto_0
    return v0

    :cond_0
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
    .line 550
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$Alternate;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/common/Alternates$Alternate;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 642
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 643
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 647
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/common/Alternates$Alternate;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 648
    :sswitch_0
    return-object p0

    .line 653
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$Alternate;->setText(Ljava/lang/String;)Lcom/google/speech/common/Alternates$Alternate;

    goto :goto_0

    .line 657
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/common/Alternates$Alternate;->setConfidence(F)Lcom/google/speech/common/Alternates$Alternate;

    goto :goto_0

    .line 643
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setConfidence(F)Lcom/google/speech/common/Alternates$Alternate;
    .locals 1
    .parameter "value"

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$Alternate;->hasConfidence:Z

    .line 580
    iput p1, p0, Lcom/google/speech/common/Alternates$Alternate;->confidence_:F

    .line 581
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/speech/common/Alternates$Alternate;
    .locals 1
    .parameter "value"

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/common/Alternates$Alternate;->hasText:Z

    .line 563
    iput-object p1, p0, Lcom/google/speech/common/Alternates$Alternate;->text_:Ljava/lang/String;

    .line 564
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
    .line 604
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 607
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->hasConfidence()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$Alternate;->getConfidence()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 610
    :cond_1
    return-void
.end method
