.class public final Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "LocationDescriptorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llocation/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationAttributesProto"
.end annotation


# static fields
.field public static final ACTIVITY_TYPE_ACTIVITY_IN_VEHICLE:I = 0x2

.field public static final ACTIVITY_TYPE_ACTIVITY_ON_BICYCLE:I = 0x3

.field public static final ACTIVITY_TYPE_ACTIVITY_ON_FOOT:I = 0x4

.field public static final ACTIVITY_TYPE_ACTIVITY_STILL:I = 0x1

.field public static final ACTIVITY_TYPE_ACTIVITY_UNKNOWN:I = 0x0

.field public static final DETECTED_ACTIVITY_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private detectedActivity_:I

.field private hasDetectedActivity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    .line 777
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->cachedSize:I

    .line 733
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 829
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 823
    new-instance v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    invoke-direct {v0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;-><init>()V

    invoke-virtual {v0, p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    check-cast v0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    return-object v0
.end method


# virtual methods
.method public final clear()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1

    .prologue
    .line 760
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->clearDetectedActivity()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    .line 761
    const/4 v0, -0x1

    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->cachedSize:I

    .line 762
    return-object p0
.end method

.method public clearDetectedActivity()Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->hasDetectedActivity:Z

    .line 755
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    .line 756
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 782
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->getSerializedSize()I

    .line 784
    :cond_0
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->cachedSize:I

    return v0
.end method

.method public getDetectedActivity()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, size:I
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->hasDetectedActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    const/4 v1, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->getDetectedActivity()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 794
    :cond_0
    iput v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->cachedSize:I

    .line 795
    return v0
.end method

.method public hasDetectedActivity()Z
    .locals 1

    .prologue
    .line 746
    iget-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->hasDetectedActivity:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 766
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
    .line 730
    invoke-virtual {p0, p1}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 804
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 808
    invoke-virtual {p0, p1, v0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    :sswitch_0
    return-object p0

    .line 814
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->setDetectedActivity(I)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;

    goto :goto_0

    .line 804
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setDetectedActivity(I)Llocation/unified/LocationDescriptorProto$LocationAttributesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->hasDetectedActivity:Z

    .line 750
    iput p1, p0, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->detectedActivity_:I

    .line 751
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
    .line 772
    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->hasDetectedActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const/4 v0, 0x1

    invoke-virtual {p0}, Llocation/unified/LocationDescriptorProto$LocationAttributesProto;->getDetectedActivity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 775
    :cond_0
    return-void
.end method
