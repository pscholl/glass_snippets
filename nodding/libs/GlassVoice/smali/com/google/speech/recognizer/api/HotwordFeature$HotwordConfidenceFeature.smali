.class public final Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "HotwordFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/recognizer/api/HotwordFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotwordConfidenceFeature"
.end annotation


# static fields
.field public static final AM_SCORE_FIELD_NUMBER:I = 0x11

.field public static final ASCORE_BEST_FIELD_NUMBER:I = 0xe

.field public static final ASCORE_MEANDIFF_FIELD_NUMBER:I = 0xd

.field public static final ASCORE_MEAN_FIELD_NUMBER:I = 0xa

.field public static final ASCORE_STDDEV_FIELD_NUMBER:I = 0xb

.field public static final ASCORE_WORST_FIELD_NUMBER:I = 0xc

.field public static final DUR_SCORE_FIELD_NUMBER:I = 0x10

.field public static final FRAME_DISTANCE_FIELD_NUMBER:I = 0x3

.field public static final LM_SCORE_FIELD_NUMBER:I = 0xf

.field public static final NORMALIZED_WORD_DURATION_FIELD_NUMBER:I = 0x9

.field public static final NUM_PHONES_FIELD_NUMBER:I = 0x8

.field public static final PHONE_DURATION_SCORE_FIELD_NUMBER:I = 0x1

.field public static final PH_ALIGN_DELETE_FIELD_NUMBER:I = 0x1b

.field public static final PH_ALIGN_FIELD_NUMBER:I = 0x1a

.field public static final PH_ALIGN_INSERT_FIELD_NUMBER:I = 0x1c

.field public static final PH_EXPECTATION_ALIGN_FIELD_NUMBER:I = 0x13

.field public static final PH_EXPECTATION_DELETE_ALIGN_FIELD_NUMBER:I = 0x15

.field public static final PH_EXPECTATION_DELETE_NN_FIELD_NUMBER:I = 0x18

.field public static final PH_EXPECTATION_INSERT_ALIGN_FIELD_NUMBER:I = 0x16

.field public static final PH_EXPECTATION_INSERT_NN_FIELD_NUMBER:I = 0x19

.field public static final PH_EXPECTATION_NN_FIELD_NUMBER:I = 0x14

.field public static final PH_NN_DELETE_FIELD_NUMBER:I = 0x1e

.field public static final PH_NN_FIELD_NUMBER:I = 0x1d

.field public static final PH_NN_INSERT_FIELD_NUMBER:I = 0x1f

.field public static final SPEAKER_RATE_FIELD_NUMBER:I = 0x2

.field public static final STABILITY_FIELD_NUMBER:I = 0x17

.field public static final START_FRAME_FIELD_NUMBER:I = 0x12

.field public static final WORD_DURATION_FRAMES_FIELD_NUMBER:I = 0x4


# instance fields
.field private amScore_:F

.field private ascoreBest_:F

.field private ascoreMean_:F

.field private ascoreMeandiff_:F

.field private ascoreStddev_:F

.field private ascoreWorst_:F

.field private cachedSize:I

.field private durScore_:F

.field private frameDistance_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private hasAmScore:Z

.field private hasAscoreBest:Z

.field private hasAscoreMean:Z

.field private hasAscoreMeandiff:Z

.field private hasAscoreStddev:Z

.field private hasAscoreWorst:Z

.field private hasDurScore:Z

.field private hasLmScore:Z

.field private hasNormalizedWordDuration:Z

.field private hasNumPhones:Z

.field private hasPhoneDurationScore:Z

.field private hasSpeakerRate:Z

.field private hasStability:Z

.field private hasStartFrame:Z

.field private hasWordDurationFrames:Z

.field private lmScore_:F

.field private normalizedWordDuration_:F

.field private numPhones_:F

.field private phAlignDelete_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phAlignInsert_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phAlign_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationAlign_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationDeleteAlign_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationDeleteNn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationInsertAlign_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationInsertNn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phExpectationNn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phNnDelete_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phNnInsert_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phNn_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private phoneDurationScore_:F

.field private speakerRate_:F

.field private stability_:F

.field private startFrame_:F

.field private wordDurationFrames_:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 32
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    .line 76
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 93
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 110
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 127
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 144
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 161
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 178
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 195
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 212
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 229
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 246
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 263
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 280
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    .line 323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    .line 350
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    .line 377
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    .line 404
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    .line 431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    .line 485
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    .line 512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    .line 539
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    .line 566
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    .line 593
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    .line 744
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1038
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1032
    new-instance v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    invoke-direct {v0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    check-cast v0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    return-object v0
.end method


# virtual methods
.method public addFrameDistance(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    return-object p0
.end method

.method public addPhAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    return-object p0
.end method

.method public addPhAlignDelete(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-object p0
.end method

.method public addPhAlignInsert(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    return-object p0
.end method

.method public addPhExpectationAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    return-object p0
.end method

.method public addPhExpectationDeleteAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    return-object p0
.end method

.method public addPhExpectationDeleteNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    return-object p0
.end method

.method public addPhExpectationInsertAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    return-object p0
.end method

.method public addPhExpectationInsertNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    return-object p0
.end method

.method public addPhExpectationNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    return-object p0
.end method

.method public addPhNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    return-object p0
.end method

.method public addPhNnDelete(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    return-object p0
.end method

.method public addPhNnInsert(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "value"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    return-object p0
.end method

.method public final clear()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhoneDurationScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 620
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearSpeakerRate()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 621
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearFrameDistance()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 622
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearWordDurationFrames()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 623
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearNumPhones()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 624
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearNormalizedWordDuration()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 625
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreMean()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 626
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreStddev()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 627
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreWorst()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 628
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreMeandiff()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 629
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAscoreBest()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 630
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearLmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 631
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearDurScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 632
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearAmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 633
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearStartFrame()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 634
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearStability()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 635
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 636
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhAlignDelete()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 637
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhAlignInsert()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 638
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 639
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhNnDelete()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 640
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhNnInsert()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 641
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 642
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 643
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationDeleteAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 644
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationInsertAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 645
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationDeleteNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 646
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->clearPhExpectationInsertNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    .line 647
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    .line 648
    return-object p0
.end method

.method public clearAmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore:Z

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 257
    return-object p0
.end method

.method public clearAscoreBest()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest:Z

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 206
    return-object p0
.end method

.method public clearAscoreMean()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean:Z

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 138
    return-object p0
.end method

.method public clearAscoreMeandiff()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff:Z

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 189
    return-object p0
.end method

.method public clearAscoreStddev()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev:Z

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 155
    return-object p0
.end method

.method public clearAscoreWorst()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst:Z

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 172
    return-object p0
.end method

.method public clearDurScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore:Z

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 240
    return-object p0
.end method

.method public clearFrameDistance()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    .line 70
    return-object p0
.end method

.method public clearLmScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore:Z

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 223
    return-object p0
.end method

.method public clearNormalizedWordDuration()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration:Z

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 121
    return-object p0
.end method

.method public clearNumPhones()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones:Z

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 104
    return-object p0
.end method

.method public clearPhAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    .line 318
    return-object p0
.end method

.method public clearPhAlignDelete()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    .line 345
    return-object p0
.end method

.method public clearPhAlignInsert()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    .line 372
    return-object p0
.end method

.method public clearPhExpectationAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 479
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    .line 480
    return-object p0
.end method

.method public clearPhExpectationDeleteAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 533
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    .line 534
    return-object p0
.end method

.method public clearPhExpectationDeleteNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    .line 588
    return-object p0
.end method

.method public clearPhExpectationInsertAlign()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 560
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    .line 561
    return-object p0
.end method

.method public clearPhExpectationInsertNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    .line 615
    return-object p0
.end method

.method public clearPhExpectationNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 506
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    .line 507
    return-object p0
.end method

.method public clearPhNn()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    .line 399
    return-object p0
.end method

.method public clearPhNnDelete()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 425
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    .line 426
    return-object p0
.end method

.method public clearPhNnInsert()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    .line 453
    return-object p0
.end method

.method public clearPhoneDurationScore()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 26
    return-object p0
.end method

.method public clearSpeakerRate()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate:Z

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 43
    return-object p0
.end method

.method public clearStability()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability:Z

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 291
    return-object p0
.end method

.method public clearStartFrame()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame:Z

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 274
    return-object p0
.end method

.method public clearWordDurationFrames()Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames:Z

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 87
    return-object p0
.end method

.method public getAmScore()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    return v0
.end method

.method public getAscoreBest()F
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    return v0
.end method

.method public getAscoreMean()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    return v0
.end method

.method public getAscoreMeandiff()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    return v0
.end method

.method public getAscoreStddev()F
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    return v0
.end method

.method public getAscoreWorst()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    if-gez v0, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getSerializedSize()I

    .line 751
    :cond_0
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    return v0
.end method

.method public getDurScore()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    return v0
.end method

.method public getFrameDistance(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getFrameDistanceCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFrameDistanceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    return-object v0
.end method

.method public getLmScore()F
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    return v0
.end method

.method public getNormalizedWordDuration()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    return v0
.end method

.method public getNumPhones()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    return v0
.end method

.method public getPhAlign(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhAlignCount()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhAlignDelete(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhAlignDeleteCount()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhAlignDeleteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    return-object v0
.end method

.method public getPhAlignInsert(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhAlignInsertCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhAlignInsertList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    return-object v0
.end method

.method public getPhAlignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationAlign(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationAlignCount()I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationAlignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationDeleteAlign(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationDeleteAlignCount()I
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationDeleteAlignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationDeleteNn(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationDeleteNnCount()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationDeleteNnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationInsertAlign(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationInsertAlignCount()I
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationInsertAlignList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationInsertNn(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationInsertNnCount()I
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationInsertNnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    return-object v0
.end method

.method public getPhExpectationNn(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhExpectationNnCount()I
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhExpectationNnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    return-object v0
.end method

.method public getPhNn(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhNnCount()I
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhNnDelete(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhNnDeleteCount()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhNnDeleteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    return-object v0
.end method

.method public getPhNnInsert(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPhNnInsertCount()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhNnInsertList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    return-object v0
.end method

.method public getPhNnList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneDurationScore()F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 756
    const/4 v1, 0x0

    .line 757
    .local v1, size:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 758
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhoneDurationScore()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 761
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 762
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getSpeakerRate()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 766
    :cond_1
    const/4 v0, 0x0

    .line 767
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getFrameDistanceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x4

    .line 768
    add-int/2addr v1, v0

    .line 769
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getFrameDistanceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 771
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 772
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getWordDurationFrames()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 775
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 776
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getNumPhones()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 779
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 780
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getNormalizedWordDuration()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 783
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 784
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreMean()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 787
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 788
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreStddev()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 791
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 792
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreWorst()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 795
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 796
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreMeandiff()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 799
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 800
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreBest()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 803
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 804
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getLmScore()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 807
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 808
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getDurScore()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 811
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 812
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAmScore()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 815
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 816
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getStartFrame()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 820
    :cond_d
    const/4 v0, 0x0

    .line 821
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 822
    add-int/2addr v1, v0

    .line 823
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 826
    const/4 v0, 0x0

    .line 827
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 828
    add-int/2addr v1, v0

    .line 829
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 832
    const/4 v0, 0x0

    .line 833
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 834
    add-int/2addr v1, v0

    .line 835
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 838
    const/4 v0, 0x0

    .line 839
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 840
    add-int/2addr v1, v0

    .line 841
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 843
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 844
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getStability()F

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v1, v2

    .line 848
    :cond_e
    const/4 v0, 0x0

    .line 849
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 850
    add-int/2addr v1, v0

    .line 851
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 854
    const/4 v0, 0x0

    .line 855
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 856
    add-int/2addr v1, v0

    .line 857
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 860
    const/4 v0, 0x0

    .line 861
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 862
    add-int/2addr v1, v0

    .line 863
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 866
    const/4 v0, 0x0

    .line 867
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 868
    add-int/2addr v1, v0

    .line 869
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 872
    const/4 v0, 0x0

    .line 873
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 874
    add-int/2addr v1, v0

    .line 875
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 878
    const/4 v0, 0x0

    .line 879
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 880
    add-int/2addr v1, v0

    .line 881
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 884
    const/4 v0, 0x0

    .line 885
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 886
    add-int/2addr v1, v0

    .line 887
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 890
    const/4 v0, 0x0

    .line 891
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v0, v2, 0x1

    .line 892
    add-int/2addr v1, v0

    .line 893
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 895
    iput v1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->cachedSize:I

    .line 896
    return v1
.end method

.method public getSpeakerRate()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    return v0
.end method

.method public getStability()F
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    return v0
.end method

.method public getStartFrame()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    return v0
.end method

.method public getWordDurationFrames()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    return v0
.end method

.method public hasAmScore()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore:Z

    return v0
.end method

.method public hasAscoreBest()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest:Z

    return v0
.end method

.method public hasAscoreMean()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean:Z

    return v0
.end method

.method public hasAscoreMeandiff()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff:Z

    return v0
.end method

.method public hasAscoreStddev()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev:Z

    return v0
.end method

.method public hasAscoreWorst()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst:Z

    return v0
.end method

.method public hasDurScore()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore:Z

    return v0
.end method

.method public hasLmScore()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore:Z

    return v0
.end method

.method public hasNormalizedWordDuration()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration:Z

    return v0
.end method

.method public hasNumPhones()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones:Z

    return v0
.end method

.method public hasPhoneDurationScore()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore:Z

    return v0
.end method

.method public hasSpeakerRate()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate:Z

    return v0
.end method

.method public hasStability()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability:Z

    return v0
.end method

.method public hasStartFrame()Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame:Z

    return v0
.end method

.method public hasWordDurationFrames()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 652
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 905
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 909
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 910
    :sswitch_0
    return-object p0

    .line 915
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setPhoneDurationScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 919
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setSpeakerRate(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 923
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addFrameDistance(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 927
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setWordDurationFrames(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 931
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setNumPhones(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 935
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setNormalizedWordDuration(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 939
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreMean(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 943
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreStddev(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 947
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreWorst(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 951
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreMeandiff(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 955
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAscoreBest(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 959
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setLmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 963
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setDurScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 967
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setAmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto :goto_0

    .line 971
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setStartFrame(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 975
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 979
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 983
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationDeleteAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 987
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationInsertAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 991
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->setStability(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 995
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationDeleteNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 999
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhExpectationInsertNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1003
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhAlign(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1007
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhAlignDelete(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1011
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhAlignInsert(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1015
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhNn(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1019
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhNnDelete(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 1023
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->addPhNnInsert(Z)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;

    goto/16 :goto_0

    .line 905
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x45 -> :sswitch_5
        0x4d -> :sswitch_6
        0x55 -> :sswitch_7
        0x5d -> :sswitch_8
        0x65 -> :sswitch_9
        0x6d -> :sswitch_a
        0x75 -> :sswitch_b
        0x7d -> :sswitch_c
        0x85 -> :sswitch_d
        0x8d -> :sswitch_e
        0x95 -> :sswitch_f
        0x98 -> :sswitch_10
        0xa0 -> :sswitch_11
        0xa8 -> :sswitch_12
        0xb0 -> :sswitch_13
        0xbd -> :sswitch_14
        0xc0 -> :sswitch_15
        0xc8 -> :sswitch_16
        0xd0 -> :sswitch_17
        0xd8 -> :sswitch_18
        0xe0 -> :sswitch_19
        0xe8 -> :sswitch_1a
        0xf0 -> :sswitch_1b
        0xf8 -> :sswitch_1c
    .end sparse-switch
.end method

.method public setAmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore:Z

    .line 251
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->amScore_:F

    .line 252
    return-object p0
.end method

.method public setAscoreBest(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest:Z

    .line 200
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreBest_:F

    .line 201
    return-object p0
.end method

.method public setAscoreMean(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean:Z

    .line 132
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMean_:F

    .line 133
    return-object p0
.end method

.method public setAscoreMeandiff(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff:Z

    .line 183
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreMeandiff_:F

    .line 184
    return-object p0
.end method

.method public setAscoreStddev(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev:Z

    .line 149
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreStddev_:F

    .line 150
    return-object p0
.end method

.method public setAscoreWorst(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst:Z

    .line 166
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->ascoreWorst_:F

    .line 167
    return-object p0
.end method

.method public setDurScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore:Z

    .line 234
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->durScore_:F

    .line 235
    return-object p0
.end method

.method public setFrameDistance(IF)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->frameDistance_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-object p0
.end method

.method public setLmScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore:Z

    .line 217
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->lmScore_:F

    .line 218
    return-object p0
.end method

.method public setNormalizedWordDuration(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration:Z

    .line 115
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->normalizedWordDuration_:F

    .line 116
    return-object p0
.end method

.method public setNumPhones(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones:Z

    .line 98
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->numPhones_:F

    .line 99
    return-object p0
.end method

.method public setPhAlign(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlign_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-object p0
.end method

.method public setPhAlignDelete(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignDelete_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 334
    return-object p0
.end method

.method public setPhAlignInsert(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phAlignInsert_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-object p0
.end method

.method public setPhExpectationAlign(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationAlign_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 469
    return-object p0
.end method

.method public setPhExpectationDeleteAlign(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteAlign_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 523
    return-object p0
.end method

.method public setPhExpectationDeleteNn(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationDeleteNn_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-object p0
.end method

.method public setPhExpectationInsertAlign(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertAlign_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-object p0
.end method

.method public setPhExpectationInsertNn(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationInsertNn_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 604
    return-object p0
.end method

.method public setPhExpectationNn(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phExpectationNn_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-object p0
.end method

.method public setPhNn(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNn_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 388
    return-object p0
.end method

.method public setPhNnDelete(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnDelete_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-object p0
.end method

.method public setPhNnInsert(IZ)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phNnInsert_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-object p0
.end method

.method public setPhoneDurationScore(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore:Z

    .line 20
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->phoneDurationScore_:F

    .line 21
    return-object p0
.end method

.method public setSpeakerRate(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate:Z

    .line 37
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->speakerRate_:F

    .line 38
    return-object p0
.end method

.method public setStability(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability:Z

    .line 285
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->stability_:F

    .line 286
    return-object p0
.end method

.method public setStartFrame(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame:Z

    .line 268
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->startFrame_:F

    .line 269
    return-object p0
.end method

.method public setWordDurationFrames(F)Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames:Z

    .line 81
    iput p1, p0, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->wordDurationFrames_:F

    .line 82
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasPhoneDurationScore()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhoneDurationScore()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 661
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasSpeakerRate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 662
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getSpeakerRate()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 664
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getFrameDistanceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 665
    .local v0, element:F
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    goto :goto_0

    .line 667
    .end local v0           #element:F
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasWordDurationFrames()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 668
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getWordDurationFrames()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 670
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNumPhones()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 671
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getNumPhones()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 673
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasNormalizedWordDuration()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 674
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getNormalizedWordDuration()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 676
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMean()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 677
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreMean()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 679
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreStddev()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 680
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreStddev()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 682
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreWorst()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 683
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreWorst()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 685
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreMeandiff()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 686
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreMeandiff()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 688
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAscoreBest()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 689
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAscoreBest()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 691
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasLmScore()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 692
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getLmScore()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 694
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasDurScore()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 695
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getDurScore()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 697
    :cond_c
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasAmScore()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 698
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getAmScore()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 700
    :cond_d
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStartFrame()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 701
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getStartFrame()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 703
    :cond_e
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 704
    .local v0, element:Z
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_1

    .line 706
    .end local v0           #element:Z
    :cond_f
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 707
    .restart local v0       #element:Z
    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_2

    .line 709
    .end local v0           #element:Z
    :cond_10
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 710
    .restart local v0       #element:Z
    const/16 v2, 0x15

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_3

    .line 712
    .end local v0           #element:Z
    :cond_11
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 713
    .restart local v0       #element:Z
    const/16 v2, 0x16

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_4

    .line 715
    .end local v0           #element:Z
    :cond_12
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->hasStability()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 716
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getStability()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 718
    :cond_13
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationDeleteNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 719
    .restart local v0       #element:Z
    const/16 v2, 0x18

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_5

    .line 721
    .end local v0           #element:Z
    :cond_14
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhExpectationInsertNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 722
    .restart local v0       #element:Z
    const/16 v2, 0x19

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_6

    .line 724
    .end local v0           #element:Z
    :cond_15
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 725
    .restart local v0       #element:Z
    const/16 v2, 0x1a

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_7

    .line 727
    .end local v0           #element:Z
    :cond_16
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 728
    .restart local v0       #element:Z
    const/16 v2, 0x1b

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_8

    .line 730
    .end local v0           #element:Z
    :cond_17
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhAlignInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 731
    .restart local v0       #element:Z
    const/16 v2, 0x1c

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_9

    .line 733
    .end local v0           #element:Z
    :cond_18
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 734
    .restart local v0       #element:Z
    const/16 v2, 0x1d

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_a

    .line 736
    .end local v0           #element:Z
    :cond_19
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnDeleteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 737
    .restart local v0       #element:Z
    const/16 v2, 0x1e

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_b

    .line 739
    .end local v0           #element:Z
    :cond_1a
    invoke-virtual {p0}, Lcom/google/speech/recognizer/api/HotwordFeature$HotwordConfidenceFeature;->getPhNnInsertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 740
    .restart local v0       #element:Z
    const/16 v2, 0x1f

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    goto :goto_c

    .line 742
    .end local v0           #element:Z
    :cond_1b
    return-void
.end method
