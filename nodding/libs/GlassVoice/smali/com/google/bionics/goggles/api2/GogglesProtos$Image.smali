.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation


# static fields
.field public static final ENCODED_IMAGE_FIELD_NUMBER:I = 0x2

.field public static final IMAGE_ENCODING_FIELD_NUMBER:I = 0x1

.field public static final IMAGE_ENCODING_JPEG:I = 0x1

.field public static final IMAGE_ROTATION_C_W_DEGREES_180:I = 0x2

.field public static final IMAGE_ROTATION_C_W_DEGREES_270:I = 0x3

.field public static final IMAGE_ROTATION_C_W_DEGREES_90:I = 0x1

.field public static final IMAGE_ROTATION_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private encodedImage_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasEncodedImage:Z

.field private hasImageEncoding:Z

.field private hasImageRotation:Z

.field private imageEncoding_:I

.field private imageRotation_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 830
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 843
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    .line 860
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 877
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    .line 917
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->cachedSize:I

    .line 830
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 985
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 979
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->clearImageEncoding()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 893
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->clearEncodedImage()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 894
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->clearImageRotation()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 895
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->cachedSize:I

    .line 896
    return-object p0
.end method

.method public clearEncodedImage()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasEncodedImage:Z

    .line 870
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 871
    return-object p0
.end method

.method public clearImageEncoding()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageEncoding:Z

    .line 853
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    .line 854
    return-object p0
.end method

.method public clearImageRotation()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1

    .prologue
    .line 886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageRotation:Z

    .line 887
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    .line 888
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 920
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->cachedSize:I

    if-gez v0, :cond_0

    .line 922
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->getSerializedSize()I

    .line 924
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->cachedSize:I

    return v0
.end method

.method public getEncodedImage()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getImageEncoding()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    return v0
.end method

.method public getImageRotation()I
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 929
    const/4 v0, 0x0

    .line 930
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageEncoding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 931
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->getImageEncoding()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 934
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasEncodedImage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->getEncodedImage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 938
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageRotation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 939
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->getImageRotation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 942
    :cond_2
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->cachedSize:I

    .line 943
    return v0
.end method

.method public hasEncodedImage()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasEncodedImage:Z

    return v0
.end method

.method public hasImageEncoding()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageEncoding:Z

    return v0
.end method

.method public hasImageRotation()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageRotation:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 952
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 956
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 957
    :sswitch_0
    return-object p0

    .line 962
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->setImageEncoding(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    goto :goto_0

    .line 966
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->setEncodedImage(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    goto :goto_0

    .line 970
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->setImageRotation(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    goto :goto_0

    .line 952
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
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
    .line 827
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public setEncodedImage(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasEncodedImage:Z

    .line 865
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 866
    return-object p0
.end method

.method public setImageEncoding(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageEncoding:Z

    .line 848
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    .line 849
    return-object p0
.end method

.method public setImageRotation(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .parameter "value"

    .prologue
    .line 881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageRotation:Z

    .line 882
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    .line 883
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
    .line 906
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageEncoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->getImageEncoding()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 909
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasEncodedImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->getEncodedImage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 912
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->hasImageRotation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 913
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->getImageRotation()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 915
    :cond_2
    return-void
.end method
