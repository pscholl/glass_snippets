.class public final Lcom/google/speech/s3/PinholeStream$PinholeOutput;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeOutput"
.end annotation


# static fields
.field public static final GWS_BODY_FRAGMENT_FIELD_NUMBER:I = 0x3

.field public static final GWS_HEADER_COMPLETE_FIELD_NUMBER:I = 0x2

.field public static final GWS_HEADER_FRAGMENT_FIELD_NUMBER:I = 0x1

.field public static final GWS_RESPONSE_COMPLETE_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private gwsBodyFragment_:Ljava/lang/String;

.field private gwsHeaderComplete_:Z

.field private gwsHeaderFragment_:Ljava/lang/String;

.field private gwsResponseComplete_:Z

.field private hasGwsBodyFragment:Z

.field private hasGwsHeaderComplete:Z

.field private hasGwsHeaderFragment:Z

.field private hasGwsResponseComplete:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 487
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    .line 509
    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    .line 526
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:Ljava/lang/String;

    .line 543
    iput-boolean v1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    .line 587
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->cachedSize:I

    .line 487
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->clearGwsHeaderFragment()Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 559
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->clearGwsHeaderComplete()Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 560
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->clearGwsBodyFragment()Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 561
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->clearGwsResponseComplete()Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 562
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->cachedSize:I

    .line 563
    return-object p0
.end method

.method public clearGwsBodyFragment()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsBodyFragment:Z

    .line 536
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:Ljava/lang/String;

    .line 537
    return-object p0
.end method

.method public clearGwsHeaderComplete()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 518
    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderComplete:Z

    .line 519
    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    .line 520
    return-object p0
.end method

.method public clearGwsHeaderFragment()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderFragment:Z

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    .line 503
    return-object p0
.end method

.method public clearGwsResponseComplete()Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsResponseComplete:Z

    .line 553
    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    .line 554
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 590
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->cachedSize:I

    if-gez v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getSerializedSize()I

    .line 594
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->cachedSize:I

    return v0
.end method

.method public getGwsBodyFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:Ljava/lang/String;

    return-object v0
.end method

.method public getGwsHeaderComplete()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    return v0
.end method

.method public getGwsHeaderFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    return-object v0
.end method

.method public getGwsResponseComplete()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderComplete()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsBodyFragment()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 609
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsBodyFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 612
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsResponseComplete()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 613
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsResponseComplete()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    :cond_3
    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->cachedSize:I

    .line 617
    return v0
.end method

.method public hasGwsBodyFragment()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsBodyFragment:Z

    return v0
.end method

.method public hasGwsHeaderComplete()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderComplete:Z

    return v0
.end method

.method public hasGwsHeaderFragment()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderFragment:Z

    return v0
.end method

.method public hasGwsResponseComplete()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsResponseComplete:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x1

    return v0
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
    .line 484
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 626
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 630
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 631
    :sswitch_0
    return-object p0

    .line 636
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->setGwsHeaderFragment(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    goto :goto_0

    .line 640
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->setGwsHeaderComplete(Z)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    goto :goto_0

    .line 644
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->setGwsBodyFragment(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    goto :goto_0

    .line 648
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->setGwsResponseComplete(Z)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    goto :goto_0

    .line 626
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setGwsBodyFragment(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .parameter "value"

    .prologue
    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsBodyFragment:Z

    .line 531
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsBodyFragment_:Ljava/lang/String;

    .line 532
    return-object p0
.end method

.method public setGwsHeaderComplete(Z)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .parameter "value"

    .prologue
    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderComplete:Z

    .line 514
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderComplete_:Z

    .line 515
    return-object p0
.end method

.method public setGwsHeaderFragment(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .parameter "value"

    .prologue
    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderFragment:Z

    .line 497
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsHeaderFragment_:Ljava/lang/String;

    .line 498
    return-object p0
.end method

.method public setGwsResponseComplete(Z)Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .locals 1
    .parameter "value"

    .prologue
    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsResponseComplete:Z

    .line 548
    iput-boolean p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->gwsResponseComplete_:Z

    .line 549
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
    .line 573
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsHeaderComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderComplete()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 579
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsBodyFragment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsBodyFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 582
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsResponseComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 583
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsResponseComplete()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 585
    :cond_3
    return-void
.end method
