.class public final Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Alignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/decoder/common/Alignment$AlignmentProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation


# static fields
.field public static final AM_COST_FIELD_NUMBER:I = 0x9

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x10

.field public static final COST_FIELD_NUMBER:I = 0x8

.field public static final END_FIELD_NUMBER:I = 0x7

.field public static final ILABEL_FIELD_NUMBER:I = 0xb

.field public static final ILABEL_STR_FIELD_NUMBER:I = 0xd

.field public static final LM_COST_FIELD_NUMBER:I = 0xa

.field public static final OLABEL_FIELD_NUMBER:I = 0xc

.field public static final OLABEL_STR_FIELD_NUMBER:I = 0xe

.field public static final START_FIELD_NUMBER:I = 0x6

.field public static final STATES_FIELD_NUMBER:I = 0xf


# instance fields
.field private amCost_:F

.field private cachedSize:I

.field private confidence_:F

.field private cost_:F

.field private end_:J

.field private hasAmCost:Z

.field private hasConfidence:Z

.field private hasCost:Z

.field private hasEnd:Z

.field private hasIlabel:Z

.field private hasIlabelStr:Z

.field private hasLmCost:Z

.field private hasOlabel:Z

.field private hasOlabelStr:Z

.field private hasStart:Z

.field private ilabelStr_:Ljava/lang/String;

.field private ilabel_:J

.field private lmCost_:F

.field private olabelStr_:Ljava/lang/String;

.field private olabel_:J

.field private start_:J

.field private states_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 25
    iput-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->start_:J

    .line 42
    iput-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->end_:J

    .line 59
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cost_:F

    .line 76
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->amCost_:F

    .line 93
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->lmCost_:F

    .line 110
    iput-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabel_:J

    .line 127
    iput-wide v2, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabel_:J

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabelStr_:Ljava/lang/String;

    .line 161
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabelStr_:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states_:Ljava/util/List;

    .line 205
    iput v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->confidence_:F

    .line 287
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cachedSize:I

    .line 20
    return-void
.end method


# virtual methods
.method public addStates(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 2
    .parameter "value"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states_:Ljava/util/List;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states_:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-object p0
.end method

.method public final clear()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearStart()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 221
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearEnd()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 222
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 223
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearAmCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 224
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearLmCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 225
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearIlabel()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 226
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearOlabel()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 227
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearIlabelStr()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 228
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearOlabelStr()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 229
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearStates()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 230
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->clearConfidence()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cachedSize:I

    .line 232
    return-object p0
.end method

.method public clearAmCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasAmCost:Z

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->amCost_:F

    .line 87
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasConfidence:Z

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->confidence_:F

    .line 216
    return-object p0
.end method

.method public clearCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasCost:Z

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cost_:F

    .line 70
    return-object p0
.end method

.method public clearEnd()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasEnd:Z

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->end_:J

    .line 53
    return-object p0
.end method

.method public clearIlabel()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabel:Z

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabel_:J

    .line 121
    return-object p0
.end method

.method public clearIlabelStr()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabelStr:Z

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabelStr_:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public clearLmCost()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasLmCost:Z

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->lmCost_:F

    .line 104
    return-object p0
.end method

.method public clearOlabel()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabel:Z

    .line 137
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabel_:J

    .line 138
    return-object p0
.end method

.method public clearOlabelStr()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabelStr:Z

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabelStr_:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public clearStart()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasStart:Z

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->start_:J

    .line 36
    return-object p0
.end method

.method public clearStates()Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1

    .prologue
    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states_:Ljava/util/List;

    .line 199
    return-object p0
.end method

.method public getAmCost()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->amCost_:F

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cachedSize:I

    if-gez v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getSerializedSize()I

    .line 294
    :cond_0
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cachedSize:I

    return v0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->confidence_:F

    return v0
.end method

.method public getCost()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cost_:F

    return v0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->end_:J

    return-wide v0
.end method

.method public getIlabel()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabel_:J

    return-wide v0
.end method

.method public getIlabelStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabelStr_:Ljava/lang/String;

    return-object v0
.end method

.method public getLmCost()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->lmCost_:F

    return v0
.end method

.method public getOlabel()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabel_:J

    return-wide v0
.end method

.method public getOlabelStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabelStr_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    .line 299
    const/4 v4, 0x0

    .line 300
    .local v4, size:I
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasStart()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    const/4 v5, 0x6

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getStart()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasEnd()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 305
    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getEnd()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasCost()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    const/16 v5, 0x8

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getCost()F

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasAmCost()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 313
    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getAmCost()F

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 316
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasLmCost()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 317
    const/16 v5, 0xa

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getLmCost()F

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 320
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabel()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 321
    const/16 v5, 0xb

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getIlabel()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 324
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabel()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 325
    const/16 v5, 0xc

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getOlabel()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    .line 328
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabelStr()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 329
    const/16 v5, 0xd

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getIlabelStr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 332
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabelStr()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 333
    const/16 v5, 0xe

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getOlabelStr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 337
    :cond_8
    const/4 v0, 0x0

    .line 338
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getStatesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 339
    .local v1, element:J
    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64SizeNoTag(J)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_0

    .line 342
    .end local v1           #element:J
    :cond_9
    add-int/2addr v4, v0

    .line 343
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getStatesList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    .line 345
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasConfidence()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 346
    const/16 v5, 0x10

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getConfidence()F

    move-result v6

    invoke-static {v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v5

    add-int/2addr v4, v5

    .line 349
    :cond_a
    iput v4, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cachedSize:I

    .line 350
    return v4
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->start_:J

    return-wide v0
.end method

.method public getStates(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatesCount()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStatesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states_:Ljava/util/List;

    return-object v0
.end method

.method public hasAmCost()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasAmCost:Z

    return v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasConfidence:Z

    return v0
.end method

.method public hasCost()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasCost:Z

    return v0
.end method

.method public hasEnd()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasEnd:Z

    return v0
.end method

.method public hasIlabel()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabel:Z

    return v0
.end method

.method public hasIlabelStr()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabelStr:Z

    return v0
.end method

.method public hasLmCost()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasLmCost:Z

    return v0
.end method

.method public hasOlabel()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabel:Z

    return v0
.end method

.method public hasOlabelStr()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabelStr:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasStart:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasStart:Z

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasEnd:Z

    if-eqz v1, :cond_0

    .line 238
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasCost:Z

    if-eqz v1, :cond_0

    .line 239
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasAmCost:Z

    if-eqz v1, :cond_0

    .line 240
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasLmCost:Z

    if-eqz v1, :cond_0

    .line 241
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabel:Z

    if-eqz v1, :cond_0

    .line 242
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabel:Z

    if-eqz v1, :cond_0

    .line 243
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabelStr:Z

    if-eqz v1, :cond_0

    .line 244
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabelStr:Z

    if-eqz v1, :cond_0

    .line 245
    iget-boolean v1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasConfidence:Z

    if-eqz v1, :cond_0

    .line 246
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
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 359
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 363
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    :sswitch_0
    return-object p0

    .line 369
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setStart(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 373
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setEnd(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 377
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 381
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setAmCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 385
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setLmCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 389
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setIlabel(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 393
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setOlabel(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 397
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setIlabelStr(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 401
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setOlabelStr(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 405
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->addStates(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 409
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->setConfidence(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    goto :goto_0

    .line 359
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x30 -> :sswitch_1
        0x38 -> :sswitch_2
        0x45 -> :sswitch_3
        0x4d -> :sswitch_4
        0x55 -> :sswitch_5
        0x58 -> :sswitch_6
        0x60 -> :sswitch_7
        0x6a -> :sswitch_8
        0x72 -> :sswitch_9
        0x78 -> :sswitch_a
        0x85 -> :sswitch_b
    .end sparse-switch
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    new-instance v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    invoke-direct {v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    invoke-direct {v0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    check-cast v0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;

    return-object v0
.end method

.method public setAmCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasAmCost:Z

    .line 81
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->amCost_:F

    .line 82
    return-object p0
.end method

.method public setConfidence(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasConfidence:Z

    .line 210
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->confidence_:F

    .line 211
    return-object p0
.end method

.method public setCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasCost:Z

    .line 64
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->cost_:F

    .line 65
    return-object p0
.end method

.method public setEnd(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasEnd:Z

    .line 47
    iput-wide p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->end_:J

    .line 48
    return-object p0
.end method

.method public setIlabel(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabel:Z

    .line 115
    iput-wide p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabel_:J

    .line 116
    return-object p0
.end method

.method public setIlabelStr(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabelStr:Z

    .line 149
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->ilabelStr_:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setLmCost(F)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasLmCost:Z

    .line 98
    iput p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->lmCost_:F

    .line 99
    return-object p0
.end method

.method public setOlabel(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabel:Z

    .line 132
    iput-wide p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabel_:J

    .line 133
    return-object p0
.end method

.method public setOlabelStr(Ljava/lang/String;)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabelStr:Z

    .line 166
    iput-object p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->olabelStr_:Ljava/lang/String;

    .line 167
    return-object p0
.end method

.method public setStart(J)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 1
    .parameter "value"

    .prologue
    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasStart:Z

    .line 30
    iput-wide p1, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->start_:J

    .line 31
    return-object p0
.end method

.method public setStates(IJ)Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->states_:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasStart()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getStart()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasEnd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 256
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getEnd()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasCost()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getCost()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasAmCost()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 262
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getAmCost()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 264
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasLmCost()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getLmCost()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 267
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabel()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 268
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getIlabel()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 270
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabel()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 271
    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getOlabel()J

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 273
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasIlabelStr()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 274
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getIlabelStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 276
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasOlabelStr()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 277
    const/16 v3, 0xe

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getOlabelStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 279
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getStatesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 280
    .local v0, element:J
    const/16 v3, 0xf

    invoke-virtual {p1, v3, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    goto :goto_0

    .line 282
    .end local v0           #element:J
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->hasConfidence()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 283
    const/16 v3, 0x10

    invoke-virtual {p0}, Lcom/google/speech/decoder/common/Alignment$AlignmentProto$Segment;->getConfidence()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    .line 285
    :cond_a
    return-void
.end method
