.class public final Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ConfFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/decoder/confidence/ConfFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UtteranceConfFeature"
.end annotation


# static fields
.field public static final AVG_AM_SCORE_FIELD_NUMBER:I = 0x3

.field public static final AVG_LAT_POSTERIOR_FIELD_NUMBER:I = 0x5

.field public static final AVG_LM_SCORE_FIELD_NUMBER:I = 0x4

.field public static final AVG_WORD_CONF_FIELD_NUMBER:I = 0x2

.field public static final HIGH_LAT_POSTERIOR_FIELD_NUMBER:I = 0x6

.field public static final NUM_WORDS_FIELD_NUMBER:I = 0x7

.field public static final SEMANTIC_CONF_FIELD_NUMBER:I = 0x1


# instance fields
.field private avgAmScore_:F

.field private avgLatPosterior_:F

.field private avgLmScore_:F

.field private avgWordConf_:F

.field private cachedSize:I

.field private hasAvgAmScore:Z

.field private hasAvgLatPosterior:Z

.field private hasAvgLmScore:Z

.field private hasAvgWordConf:Z

.field private hasHighLatPosterior:Z

.field private hasNumWords:Z

.field private hasSemanticConf:Z

.field private highLatPosterior_:F

.field private numWords_:F

.field private semanticConf_:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 455
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 460
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    .line 477
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    .line 494
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    .line 511
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    .line 528
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    .line 545
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    .line 562
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    .line 618
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->cachedSize:I

    .line 455
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 718
    new-instance v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    invoke-direct {v0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 712
    new-instance v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    invoke-direct {v0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->clearSemanticConf()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    .line 578
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->clearAvgWordConf()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    .line 579
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->clearAvgAmScore()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    .line 580
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->clearAvgLmScore()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    .line 581
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->clearAvgLatPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    .line 582
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->clearHighLatPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    .line 583
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->clearNumWords()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->cachedSize:I

    .line 585
    return-object p0
.end method

.method public clearAvgAmScore()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgAmScore:Z

    .line 504
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    .line 505
    return-object p0
.end method

.method public clearAvgLatPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLatPosterior:Z

    .line 538
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    .line 539
    return-object p0
.end method

.method public clearAvgLmScore()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLmScore:Z

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    .line 522
    return-object p0
.end method

.method public clearAvgWordConf()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgWordConf:Z

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    .line 488
    return-object p0
.end method

.method public clearHighLatPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasHighLatPosterior:Z

    .line 555
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    .line 556
    return-object p0
.end method

.method public clearNumWords()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasNumWords:Z

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    .line 573
    return-object p0
.end method

.method public clearSemanticConf()Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasSemanticConf:Z

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    .line 471
    return-object p0
.end method

.method public getAvgAmScore()F
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    return v0
.end method

.method public getAvgLatPosterior()F
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    return v0
.end method

.method public getAvgLmScore()F
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    return v0
.end method

.method public getAvgWordConf()F
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->cachedSize:I

    if-gez v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getSerializedSize()I

    .line 625
    :cond_0
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->cachedSize:I

    return v0
.end method

.method public getHighLatPosterior()F
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    return v0
.end method

.method public getNumWords()F
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    return v0
.end method

.method public getSemanticConf()F
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 630
    const/4 v0, 0x0

    .line 631
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasSemanticConf()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getSemanticConf()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgWordConf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getAvgWordConf()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgAmScore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 640
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getAvgAmScore()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 643
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLmScore()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 644
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getAvgLmScore()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 647
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLatPosterior()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 648
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getAvgLatPosterior()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 651
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasHighLatPosterior()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 652
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getHighLatPosterior()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasNumWords()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 656
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getNumWords()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 659
    :cond_6
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->cachedSize:I

    .line 660
    return v0
.end method

.method public hasAvgAmScore()Z
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgAmScore:Z

    return v0
.end method

.method public hasAvgLatPosterior()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLatPosterior:Z

    return v0
.end method

.method public hasAvgLmScore()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLmScore:Z

    return v0
.end method

.method public hasAvgWordConf()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgWordConf:Z

    return v0
.end method

.method public hasHighLatPosterior()Z
    .locals 1

    .prologue
    .line 547
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasHighLatPosterior:Z

    return v0
.end method

.method public hasNumWords()Z
    .locals 1

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasNumWords:Z

    return v0
.end method

.method public hasSemanticConf()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasSemanticConf:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 589
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
    .line 452
    invoke-virtual {p0, p1}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 668
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 669
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 673
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    :sswitch_0
    return-object p0

    .line 679
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->setSemanticConf(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    goto :goto_0

    .line 683
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->setAvgWordConf(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    goto :goto_0

    .line 687
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->setAvgAmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    goto :goto_0

    .line 691
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->setAvgLmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    goto :goto_0

    .line 695
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->setAvgLatPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    goto :goto_0

    .line 699
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->setHighLatPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    goto :goto_0

    .line 703
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->setNumWords(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;

    goto :goto_0

    .line 669
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
    .end sparse-switch
.end method

.method public setAvgAmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgAmScore:Z

    .line 499
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgAmScore_:F

    .line 500
    return-object p0
.end method

.method public setAvgLatPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLatPosterior:Z

    .line 533
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLatPosterior_:F

    .line 534
    return-object p0
.end method

.method public setAvgLmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLmScore:Z

    .line 516
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgLmScore_:F

    .line 517
    return-object p0
.end method

.method public setAvgWordConf(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgWordConf:Z

    .line 482
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->avgWordConf_:F

    .line 483
    return-object p0
.end method

.method public setHighLatPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasHighLatPosterior:Z

    .line 550
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->highLatPosterior_:F

    .line 551
    return-object p0
.end method

.method public setNumWords(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasNumWords:Z

    .line 567
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->numWords_:F

    .line 568
    return-object p0
.end method

.method public setSemanticConf(F)Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasSemanticConf:Z

    .line 465
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->semanticConf_:F

    .line 466
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
    .line 595
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasSemanticConf()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getSemanticConf()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgWordConf()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getAvgWordConf()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgAmScore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 602
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getAvgAmScore()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 604
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLmScore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 605
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getAvgLmScore()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 607
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasAvgLatPosterior()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getAvgLatPosterior()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 610
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasHighLatPosterior()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 611
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getHighLatPosterior()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 613
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->hasNumWords()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 614
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$UtteranceConfFeature;->getNumWords()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 616
    :cond_6
    return-void
.end method
