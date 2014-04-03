.class public final Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesS3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspeech/s3/goggles/GogglesS3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GogglesS3SessionOptions"
.end annotation


# static fields
.field public static final ANNOTATION_FIELD_NUMBER:I = 0x1

.field public static final CAN_LOG_IMAGE_FIELD_NUMBER:I = 0x2

.field public static final CAN_LOG_LOCATION_FIELD_NUMBER:I = 0x3

.field public static final DISCLOSED_CAPABILITIES_FIELD_NUMBER:I = 0x4

.field public static final DISCLOSED_CAPABILITY_CAPABILITY_ARTWORK:I = 0x1

.field public static final DISCLOSED_CAPABILITY_CAPABILITY_SHOPPING:I


# instance fields
.field private annotation_:Ljava/lang/String;

.field private cachedSize:I

.field private canLogImage_:Z

.field private canLogLocation_:Z

.field private disclosedCapabilities_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hasAnnotation:Z

.field private hasCanLogImage:Z

.field private hasCanLogLocation:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    .line 53
    iput-boolean v1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities_:Ljava/util/List;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    invoke-direct {v0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    invoke-direct {v0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    check-cast v0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    return-object v0
.end method


# virtual methods
.method public addDisclosedCapabilities(I)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 2
    .parameter "value"

    .prologue
    .line 83
    iget-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities_:Ljava/util/List;

    .line 86
    :cond_0
    iget-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object p0
.end method

.method public final clear()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->clearAnnotation()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 96
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->clearCanLogImage()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 97
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->clearCanLogLocation()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 98
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->clearDisclosedCapabilities()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->cachedSize:I

    .line 100
    return-object p0
.end method

.method public clearAnnotation()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasAnnotation:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public clearCanLogImage()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogImage:Z

    .line 46
    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    .line 47
    return-object p0
.end method

.method public clearCanLogLocation()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogLocation:Z

    .line 63
    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    .line 64
    return-object p0
.end method

.method public clearDisclosedCapabilities()Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities_:Ljava/util/List;

    .line 91
    return-object p0
.end method

.method public getAnnotation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->cachedSize:I

    if-gez v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getSerializedSize()I

    .line 131
    :cond_0
    iget v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->cachedSize:I

    return v0
.end method

.method public getCanLogImage()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    return v0
.end method

.method public getCanLogLocation()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    return v0
.end method

.method public getDisclosedCapabilities(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 76
    iget-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDisclosedCapabilitiesCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDisclosedCapabilitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, size:I
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasAnnotation()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    const/4 v4, 0x1

    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getAnnotation()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 141
    :cond_0
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogImage()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 142
    const/4 v4, 0x2

    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getCanLogImage()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 145
    :cond_1
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogLocation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    const/4 v4, 0x3

    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getCanLogLocation()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 150
    :cond_2
    const/4 v0, 0x0

    .line 151
    .local v0, dataSize:I
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getDisclosedCapabilitiesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 152
    .local v1, element:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 155
    .end local v1           #element:Ljava/lang/Integer;
    :cond_3
    add-int/2addr v3, v0

    .line 156
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getDisclosedCapabilitiesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 158
    iput v3, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->cachedSize:I

    .line 159
    return v3
.end method

.method public hasAnnotation()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasAnnotation:Z

    return v0
.end method

.method public hasCanLogImage()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogImage:Z

    return v0
.end method

.method public hasCanLogLocation()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogLocation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 104
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
    invoke-virtual {p0, p1}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 168
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 172
    invoke-virtual {p0, p1, v0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    :sswitch_0
    return-object p0

    .line 178
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->setAnnotation(Ljava/lang/String;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    goto :goto_0

    .line 182
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->setCanLogImage(Z)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    goto :goto_0

    .line 186
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->setCanLogLocation(Z)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    goto :goto_0

    .line 190
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->addDisclosedCapabilities(I)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;

    goto :goto_0

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setAnnotation(Ljava/lang/String;)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasAnnotation:Z

    .line 24
    iput-object p1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->annotation_:Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method public setCanLogImage(Z)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogImage:Z

    .line 41
    iput-boolean p1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogImage_:Z

    .line 42
    return-object p0
.end method

.method public setCanLogLocation(Z)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 1
    .parameter "value"

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogLocation:Z

    .line 58
    iput-boolean p1, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->canLogLocation_:Z

    .line 59
    return-object p0
.end method

.method public setDisclosedCapabilities(II)Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 79
    iget-object v0, p0, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->disclosedCapabilities_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
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
    .line 110
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasAnnotation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v2, 0x1

    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getAnnotation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    const/4 v2, 0x2

    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getCanLogImage()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 116
    :cond_1
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->hasCanLogLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    const/4 v2, 0x3

    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getCanLogLocation()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 119
    :cond_2
    invoke-virtual {p0}, Lspeech/s3/goggles/GogglesS3$GogglesS3SessionOptions;->getDisclosedCapabilitiesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 120
    .local v0, element:Ljava/lang/Integer;
    const/4 v2, 0x4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 122
    .end local v0           #element:Ljava/lang/Integer;
    :cond_3
    return-void
.end method
