.class public final Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ConfFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/decoder/confidence/ConfFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WordConfFeature"
.end annotation


# static fields
.field public static final AM_SCORE_FIELD_NUMBER:I = 0xc

.field public static final ASCORE_BEST_FIELD_NUMBER:I = 0x9

.field public static final ASCORE_MEANDIFF_FIELD_NUMBER:I = 0x8

.field public static final ASCORE_MEAN_FIELD_NUMBER:I = 0x5

.field public static final ASCORE_STDDEV_FIELD_NUMBER:I = 0x6

.field public static final ASCORE_WORST_FIELD_NUMBER:I = 0x7

.field public static final DUR_SCORE_FIELD_NUMBER:I = 0xb

.field public static final FRAME_POSTERIOR_FIELD_NUMBER:I = 0x2

.field public static final LAT_POSTERIOR_FIELD_NUMBER:I = 0x1

.field public static final LM_SCORE_FIELD_NUMBER:I = 0xa

.field public static final NUM_PHONES_FIELD_NUMBER:I = 0x3

.field public static final PIVOT_POSTERIOR_FIELD_NUMBER:I = 0xd

.field public static final WORD_DURATION_FIELD_NUMBER:I = 0x4


# instance fields
.field private amScore_:F

.field private ascoreBest_:F

.field private ascoreMean_:F

.field private ascoreMeandiff_:F

.field private ascoreStddev_:F

.field private ascoreWorst_:F

.field private cachedSize:I

.field private durScore_:F

.field private framePosterior_:F

.field private hasAmScore:Z

.field private hasAscoreBest:Z

.field private hasAscoreMean:Z

.field private hasAscoreMeandiff:Z

.field private hasAscoreStddev:Z

.field private hasAscoreWorst:Z

.field private hasDurScore:Z

.field private hasFramePosterior:Z

.field private hasLatPosterior:Z

.field private hasLmScore:Z

.field private hasNumPhones:Z

.field private hasPivotPosterior:Z

.field private hasWordDuration:Z

.field private latPosterior_:F

.field private lmScore_:F

.field private numPhones_:F

.field private pivotPosterior_:F

.field private wordDuration_:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    .line 32
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    .line 49
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    .line 66
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    .line 83
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    .line 100
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    .line 117
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    .line 134
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    .line 151
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    .line 168
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    .line 185
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    .line 202
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    .line 219
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    new-instance v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 441
    new-instance v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    invoke-direct {v0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    check-cast v0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearLatPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 235
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearFramePosterior()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 236
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearNumPhones()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 237
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearWordDuration()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 238
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearAscoreMean()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 239
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearAscoreStddev()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 240
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearAscoreWorst()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 241
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearAscoreMeandiff()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 242
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearAscoreBest()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 243
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearLmScore()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 244
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearDurScore()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 245
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearAmScore()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 246
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->clearPivotPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->cachedSize:I

    .line 248
    return-object p0
.end method

.method public clearAmScore()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAmScore:Z

    .line 212
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    .line 213
    return-object p0
.end method

.method public clearAscoreBest()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreBest:Z

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    .line 162
    return-object p0
.end method

.method public clearAscoreMean()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMean:Z

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    .line 94
    return-object p0
.end method

.method public clearAscoreMeandiff()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMeandiff:Z

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    .line 145
    return-object p0
.end method

.method public clearAscoreStddev()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreStddev:Z

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    .line 111
    return-object p0
.end method

.method public clearAscoreWorst()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreWorst:Z

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    .line 128
    return-object p0
.end method

.method public clearDurScore()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasDurScore:Z

    .line 195
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    .line 196
    return-object p0
.end method

.method public clearFramePosterior()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasFramePosterior:Z

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    .line 43
    return-object p0
.end method

.method public clearLatPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLatPosterior:Z

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    .line 26
    return-object p0
.end method

.method public clearLmScore()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLmScore:Z

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    .line 179
    return-object p0
.end method

.method public clearNumPhones()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasNumPhones:Z

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    .line 60
    return-object p0
.end method

.method public clearPivotPosterior()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasPivotPosterior:Z

    .line 229
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    .line 230
    return-object p0
.end method

.method public clearWordDuration()Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasWordDuration:Z

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    .line 77
    return-object p0
.end method

.method public getAmScore()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    return v0
.end method

.method public getAscoreBest()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    return v0
.end method

.method public getAscoreMean()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    return v0
.end method

.method public getAscoreMeandiff()F
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    return v0
.end method

.method public getAscoreStddev()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    return v0
.end method

.method public getAscoreWorst()F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->cachedSize:I

    if-gez v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getSerializedSize()I

    .line 306
    :cond_0
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->cachedSize:I

    return v0
.end method

.method public getDurScore()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    return v0
.end method

.method public getFramePosterior()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    return v0
.end method

.method public getLatPosterior()F
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    return v0
.end method

.method public getLmScore()F
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    return v0
.end method

.method public getNumPhones()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    return v0
.end method

.method public getPivotPosterior()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLatPosterior()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getLatPosterior()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasFramePosterior()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getFramePosterior()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasNumPhones()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getNumPhones()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasWordDuration()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getWordDuration()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMean()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreMean()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 332
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreStddev()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 333
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreStddev()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 336
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreWorst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 337
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreWorst()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 340
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMeandiff()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 341
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreMeandiff()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreBest()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 345
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreBest()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLmScore()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 349
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getLmScore()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasDurScore()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 353
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getDurScore()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAmScore()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 357
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAmScore()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 360
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasPivotPosterior()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 361
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getPivotPosterior()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 364
    :cond_c
    iput v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->cachedSize:I

    .line 365
    return v0
.end method

.method public getWordDuration()F
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    return v0
.end method

.method public hasAmScore()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAmScore:Z

    return v0
.end method

.method public hasAscoreBest()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreBest:Z

    return v0
.end method

.method public hasAscoreMean()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMean:Z

    return v0
.end method

.method public hasAscoreMeandiff()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMeandiff:Z

    return v0
.end method

.method public hasAscoreStddev()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreStddev:Z

    return v0
.end method

.method public hasAscoreWorst()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreWorst:Z

    return v0
.end method

.method public hasDurScore()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasDurScore:Z

    return v0
.end method

.method public hasFramePosterior()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasFramePosterior:Z

    return v0
.end method

.method public hasLatPosterior()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLatPosterior:Z

    return v0
.end method

.method public hasLmScore()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLmScore:Z

    return v0
.end method

.method public hasNumPhones()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasNumPhones:Z

    return v0
.end method

.method public hasPivotPosterior()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasPivotPosterior:Z

    return v0
.end method

.method public hasWordDuration()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasWordDuration:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 252
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
    invoke-virtual {p0, p1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 374
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 378
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    :sswitch_0
    return-object p0

    .line 384
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setLatPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 388
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setFramePosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 392
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setNumPhones(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 396
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setWordDuration(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 400
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setAscoreMean(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 404
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setAscoreStddev(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 408
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setAscoreWorst(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 412
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setAscoreMeandiff(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 416
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setAscoreBest(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 420
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setLmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 424
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setDurScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 428
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setAmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 432
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->setPivotPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;

    goto :goto_0

    .line 374
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
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
        0x55 -> :sswitch_a
        0x5d -> :sswitch_b
        0x65 -> :sswitch_c
        0x6d -> :sswitch_d
    .end sparse-switch
.end method

.method public setAmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAmScore:Z

    .line 207
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->amScore_:F

    .line 208
    return-object p0
.end method

.method public setAscoreBest(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreBest:Z

    .line 156
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreBest_:F

    .line 157
    return-object p0
.end method

.method public setAscoreMean(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMean:Z

    .line 88
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMean_:F

    .line 89
    return-object p0
.end method

.method public setAscoreMeandiff(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMeandiff:Z

    .line 139
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreMeandiff_:F

    .line 140
    return-object p0
.end method

.method public setAscoreStddev(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreStddev:Z

    .line 105
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreStddev_:F

    .line 106
    return-object p0
.end method

.method public setAscoreWorst(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreWorst:Z

    .line 122
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->ascoreWorst_:F

    .line 123
    return-object p0
.end method

.method public setDurScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasDurScore:Z

    .line 190
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->durScore_:F

    .line 191
    return-object p0
.end method

.method public setFramePosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasFramePosterior:Z

    .line 37
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->framePosterior_:F

    .line 38
    return-object p0
.end method

.method public setLatPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLatPosterior:Z

    .line 20
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->latPosterior_:F

    .line 21
    return-object p0
.end method

.method public setLmScore(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLmScore:Z

    .line 173
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->lmScore_:F

    .line 174
    return-object p0
.end method

.method public setNumPhones(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasNumPhones:Z

    .line 54
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->numPhones_:F

    .line 55
    return-object p0
.end method

.method public setPivotPosterior(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasPivotPosterior:Z

    .line 224
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->pivotPosterior_:F

    .line 225
    return-object p0
.end method

.method public setWordDuration(F)Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasWordDuration:Z

    .line 71
    iput p1, p0, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->wordDuration_:F

    .line 72
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
    .line 258
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLatPosterior()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getLatPosterior()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasFramePosterior()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getFramePosterior()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasNumPhones()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getNumPhones()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 267
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasWordDuration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getWordDuration()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMean()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 271
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreMean()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 273
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreStddev()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 274
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreStddev()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 276
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreWorst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreWorst()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 279
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreMeandiff()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 280
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreMeandiff()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 282
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAscoreBest()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAscoreBest()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 285
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasLmScore()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 286
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getLmScore()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 288
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasDurScore()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 289
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getDurScore()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 291
    :cond_a
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasAmScore()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 292
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getAmScore()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 294
    :cond_b
    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->hasPivotPosterior()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 295
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/speech/decoder/confidence/ConfFeature$WordConfFeature;->getPivotPosterior()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 297
    :cond_c
    return-void
.end method
