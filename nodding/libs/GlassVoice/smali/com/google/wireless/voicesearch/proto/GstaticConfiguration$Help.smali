.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Help"
.end annotation


# static fields
.field public static final PRIVACY_URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasPrivacyUrl:Z

.field private privacyUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1667
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    .line 1704
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->cachedSize:I

    .line 1667
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1756
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1750
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1

    .prologue
    .line 1687
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->clearPrivacyUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    .line 1688
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->cachedSize:I

    .line 1689
    return-object p0
.end method

.method public clearPrivacyUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1

    .prologue
    .line 1681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->hasPrivacyUrl:Z

    .line 1682
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    .line 1683
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1707
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->cachedSize:I

    if-gez v0, :cond_0

    .line 1709
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->getSerializedSize()I

    .line 1711
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->cachedSize:I

    return v0
.end method

.method public getPrivacyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1716
    const/4 v0, 0x0

    .line 1717
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->hasPrivacyUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1718
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1721
    :cond_0
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->cachedSize:I

    .line 1722
    return v0
.end method

.method public hasPrivacyUrl()Z
    .locals 1

    .prologue
    .line 1674
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->hasPrivacyUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1693
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
    .line 1664
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1730
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1731
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1735
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1736
    :sswitch_0
    return-object p0

    .line 1741
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->setPrivacyUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;

    goto :goto_0

    .line 1731
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setPrivacyUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;
    .locals 1
    .parameter "value"

    .prologue
    .line 1676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->hasPrivacyUrl:Z

    .line 1677
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->privacyUrl_:Ljava/lang/String;

    .line 1678
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
    .line 1699
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->hasPrivacyUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1700
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Help;->getPrivacyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1702
    :cond_0
    return-void
.end method
