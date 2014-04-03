.class public final Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EarsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/audio/ears/proto/EarsService$YouTubeVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoThumbnail"
.end annotation


# static fields
.field public static final HEIGHT_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x1

.field public static final WIDTH_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasHeight:Z

.field private hasUrl:Z

.field private hasWidth:Z

.field private height_:I

.field private url_:Ljava/lang/String;

.field private width_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2755
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2760
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    .line 2777
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    .line 2794
    iput v1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    .line 2834
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->cachedSize:I

    .line 2755
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1

    .prologue
    .line 2809
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->clearUrl()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    .line 2810
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->clearWidth()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    .line 2811
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->clearHeight()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    .line 2812
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->cachedSize:I

    .line 2813
    return-object p0
.end method

.method public clearHeight()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2803
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasHeight:Z

    .line 2804
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    .line 2805
    return-object p0
.end method

.method public clearUrl()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1

    .prologue
    .line 2769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasUrl:Z

    .line 2770
    const-string v0, ""

    iput-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    .line 2771
    return-object p0
.end method

.method public clearWidth()Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2786
    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasWidth:Z

    .line 2787
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    .line 2788
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2837
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->cachedSize:I

    if-gez v0, :cond_0

    .line 2839
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->getSerializedSize()I

    .line 2841
    :cond_0
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->cachedSize:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 2795
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2846
    const/4 v0, 0x0

    .line 2847
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2848
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2851
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasWidth()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2852
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->getWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2855
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasHeight()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2856
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2859
    :cond_2
    iput v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->cachedSize:I

    .line 2860
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 2778
    iget v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 2796
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasHeight:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 2762
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasUrl:Z

    return v0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 2779
    iget-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasWidth:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2817
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2868
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2869
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2873
    invoke-virtual {p0, p1, v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2874
    :sswitch_0
    return-object p0

    .line 2879
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->setUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    goto :goto_0

    .line 2883
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->setWidth(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    goto :goto_0

    .line 2887
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->setHeight(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    goto :goto_0

    .line 2869
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 2752
    invoke-virtual {p0, p1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2902
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2896
    new-instance v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    invoke-direct {v0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    check-cast v0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;

    return-object v0
.end method

.method public setHeight(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .parameter "value"

    .prologue
    .line 2798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasHeight:Z

    .line 2799
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->height_:I

    .line 2800
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .parameter "value"

    .prologue
    .line 2764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasUrl:Z

    .line 2765
    iput-object p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->url_:Ljava/lang/String;

    .line 2766
    return-object p0
.end method

.method public setWidth(I)Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;
    .locals 1
    .parameter "value"

    .prologue
    .line 2781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasWidth:Z

    .line 2782
    iput p1, p0, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->width_:I

    .line 2783
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
    .line 2823
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2824
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2826
    :cond_0
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2827
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->getWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2829
    :cond_1
    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2830
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/audio/ears/proto/EarsService$YouTubeVideo$VideoThumbnail;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2832
    :cond_2
    return-void
.end method
