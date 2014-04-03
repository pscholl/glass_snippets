.class public final Lcom/google/speech/s3/PinholeStream$PinholeParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PinholeStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/PinholeStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinholeParams"
.end annotation


# static fields
.field public static final CGI_PARAMS_FIELD_NUMBER:I = 0x1

.field public static final HEADERS_FIELD_NUMBER:I = 0x2

.field public static final URL_PATH_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private cgiParams_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;",
            ">;"
        }
    .end annotation
.end field

.field private hasUrlPath:Z

.field private headers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeHeader;",
            ">;"
        }
    .end annotation
.end field

.field private urlPath_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, "/search"

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams_:Ljava/util/List;

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers_:Ljava/util/List;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    invoke-direct {v0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeParams;

    return-object v0
.end method


# virtual methods
.method public addCgiParams(Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams_:Ljava/util/List;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-object p0
.end method

.method public addHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers_:Ljava/util/List;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object p0
.end method

.method public final clear()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->clearUrlPath()Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 97
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->clearCgiParams()Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 98
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->clearHeaders()Lcom/google/speech/s3/PinholeStream$PinholeParams;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cachedSize:I

    .line 100
    return-object p0
.end method

.method public clearCgiParams()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams_:Ljava/util/List;

    .line 59
    return-object p0
.end method

.method public clearHeaders()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers_:Ljava/util/List;

    .line 92
    return-object p0
.end method

.method public clearUrlPath()Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->hasUrlPath:Z

    .line 25
    const-string v0, "/search"

    iput-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->getSerializedSize()I

    .line 128
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cachedSize:I

    return v0
.end method

.method public getCgiParams(I)Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    .locals 1
    .parameter "index"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    return-object v0
.end method

.method public getCgiParamsCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCgiParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams_:Ljava/util/List;

    return-object v0
.end method

.method public getHeaders(I)Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    .locals 1
    .parameter "index"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    return-object v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->getCgiParamsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 135
    .local v0, element:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 138
    .end local v0           #element:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->getHeadersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 139
    .local v0, element:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 142
    .end local v0           #element:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->hasUrlPath()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->getUrlPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 146
    :cond_2
    iput v2, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cachedSize:I

    .line 147
    return v2
.end method

.method public getUrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    return-object v0
.end method

.method public hasUrlPath()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->hasUrlPath:Z

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
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 156
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    :sswitch_0
    return-object p0

    .line 166
    :sswitch_1
    new-instance v1, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    invoke-direct {v1}, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;-><init>()V

    .line 167
    .local v1, value:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addCgiParams(Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    goto :goto_0

    .line 172
    .end local v1           #value:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :sswitch_2
    new-instance v1, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    invoke-direct {v1}, Lcom/google/speech/s3/PinholeStream$PinholeHeader;-><init>()V

    .line 173
    .local v1, value:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->addHeaders(Lcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    goto :goto_0

    .line 178
    .end local v1           #value:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->setUrlPath(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeParams;

    goto :goto_0

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setCgiParams(ILcom/google/speech/s3/PinholeStream$PinholeCgiParam;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->cgiParams_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object p0
.end method

.method public setHeaders(ILcom/google/speech/s3/PinholeStream$PinholeHeader;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 74
    if-nez p2, :cond_0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->headers_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-object p0
.end method

.method public setUrlPath(Ljava/lang/String;)Lcom/google/speech/s3/PinholeStream$PinholeParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->hasUrlPath:Z

    .line 20
    iput-object p1, p0, Lcom/google/speech/s3/PinholeStream$PinholeParams;->urlPath_:Ljava/lang/String;

    .line 21
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
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->getCgiParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;

    .line 111
    .local v0, element:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 113
    .end local v0           #element:Lcom/google/speech/s3/PinholeStream$PinholeCgiParam;
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->getHeadersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeHeader;

    .line 114
    .local v0, element:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 116
    .end local v0           #element:Lcom/google/speech/s3/PinholeStream$PinholeHeader;
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->hasUrlPath()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/s3/PinholeStream$PinholeParams;->getUrlPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 119
    :cond_2
    return-void
.end method
