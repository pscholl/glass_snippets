.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation


# static fields
.field public static final ICON_FIELD_NUMBER:I = 0x3

.field public static final ICON_ICON_ART_PROJECT:I = 0x1

.field public static final ICON_ICON_WEB:I = 0x0

.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasIcon:Z

.field private hasLabel:Z

.field private hasUrl:Z

.field private icon_:I

.field private label_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->cachedSize:I

    .line 15
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->clearLabel()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    .line 74
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->clearUrl()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    .line 75
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->clearIcon()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->cachedSize:I

    .line 77
    return-object p0
.end method

.method public clearIcon()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasIcon:Z

    .line 68
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    .line 69
    return-object p0
.end method

.method public clearLabel()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasLabel:Z

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public clearUrl()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasUrl:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    .line 52
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->cachedSize:I

    if-gez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->getSerializedSize()I

    .line 105
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->cachedSize:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->getIcon()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_2
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->cachedSize:I

    .line 124
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasIcon:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasLabel:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 133
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    :sswitch_0
    return-object p0

    .line 143
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->setLabel(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    goto :goto_0

    .line 147
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->setUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    goto :goto_0

    .line 151
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->setIcon(I)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    goto :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    return-object v0
.end method

.method public setIcon(I)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .parameter "value"

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasIcon:Z

    .line 63
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    .line 64
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .parameter "value"

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasLabel:Z

    .line 29
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .parameter "value"

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasUrl:Z

    .line 46
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    .line 47
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
    .line 87
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->getIcon()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 96
    :cond_2
    return-void
.end method
