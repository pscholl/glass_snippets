.class public final Llocation/unified/LocationDescriptorProto$FeatureIdProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureIdProto"
.end annotation


# static fields
.field public static final CELL_ID_FIELD_NUMBER:I = 0x1

.field public static final FPRINT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private cellId_:J

.field private fprint_:J

.field private hasCellId:Z

.field private hasFprint:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 607
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 612
    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 629
    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 665
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    .line 607
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    check-cast v0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method


# virtual methods
.method public final clear()Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1

    .prologue
    .line 644
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->clearCellId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 645
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->clearFprint()Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    .line 646
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    .line 647
    return-object p0
.end method

.method public clearCellId()Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 2

    .prologue
    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasCellId:Z

    .line 622
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 623
    return-object p0
.end method

.method public clearFprint()Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 2

    .prologue
    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasFprint:Z

    .line 639
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 640
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 670
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getSerializedSize()I

    .line 672
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    return v0
.end method

.method public getCellId()J
    .locals 2

    .prologue
    .line 613
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    return-wide v0
.end method

.method public getFprint()J
    .locals 2

    .prologue
    .line 630
    iget-wide v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 677
    const/4 v0, 0x0

    .line 678
    .local v0, size:I
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasCellId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    const/4 v1, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getCellId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 682
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasFprint()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    const/4 v1, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getFprint()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 686
    :cond_1
    iput v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cachedSize:I

    .line 687
    return v0
.end method

.method public hasCellId()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasCellId:Z

    return v0
.end method

.method public hasFprint()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasFprint:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 651
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
    .line 604
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 696
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 700
    invoke-virtual {p0, p1, v0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    :sswitch_0
    return-object p0

    .line 706
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->setCellId(J)Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    goto :goto_0

    .line 710
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->setFprint(J)Llocation/unified/LocationDescriptorProto$FeatureIdProto;

    goto :goto_0

    .line 696
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCellId(J)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasCellId:Z

    .line 617
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->cellId_:J

    .line 618
    return-object p0
.end method

.method public setFprint(J)Llocation/unified/LocationDescriptorProto$FeatureIdProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasFprint:Z

    .line 634
    iput-wide p1, p0, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->fprint_:J

    .line 635
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasCellId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    const/4 v0, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getCellId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 660
    :cond_0
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->hasFprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    const/4 v0, 0x2

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$FeatureIdProto;->getFprint()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 663
    :cond_1
    return-void
.end method
