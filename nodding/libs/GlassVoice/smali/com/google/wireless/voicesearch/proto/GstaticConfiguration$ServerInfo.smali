.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerInfo"
.end annotation


# static fields
.field public static final BLACKLIST_MCC_MNC_FIELD_NUMBER:I = 0x9

.field public static final CONNECTION_TIMEOUT_MSEC_FIELD_NUMBER:I = 0x7

.field public static final HEADER_FIELD_NUMBER:I = 0x3

.field public static final HOST_FIELD_NUMBER:I = 0x1

.field public static final IN_BUFFER_SIZE_FIELD_NUMBER:I = 0x5

.field public static final OPEN_CONNECTION_TIMEOUT_MSEC_FIELD_NUMBER:I = 0x6

.field public static final OUT_BUFFER_SIZE_FIELD_NUMBER:I = 0x4

.field public static final PORT_FIELD_NUMBER:I = 0x2

.field public static final USE_SSL_FIELD_NUMBER:I = 0x8


# instance fields
.field private blacklistMccMnc_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private connectionTimeoutMsec_:I

.field private hasConnectionTimeoutMsec:Z

.field private hasHeader:Z

.field private hasHost:Z

.field private hasInBufferSize:Z

.field private hasOpenConnectionTimeoutMsec:Z

.field private hasOutBufferSize:Z

.field private hasPort:Z

.field private hasUseSsl:Z

.field private header_:Ljava/lang/String;

.field private host_:Ljava/lang/String;

.field private inBufferSize_:I

.field private openConnectionTimeoutMsec_:I

.field private outBufferSize_:I

.field private port_:I

.field private useSsl_:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1764
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1769
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    .line 1786
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    .line 1803
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    .line 1820
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    .line 1837
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    .line 1854
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    .line 1871
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    .line 1888
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    .line 1904
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc_:Ljava/util/List;

    .line 1979
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->cachedSize:I

    .line 1764
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2100
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2094
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    return-object v0
.end method


# virtual methods
.method public addBlacklistMccMnc(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 2
    .parameter "value"

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc_:Ljava/util/List;

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1922
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1930
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clearHost()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1931
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clearPort()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1932
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clearHeader()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1933
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clearOutBufferSize()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1934
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clearInBufferSize()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1935
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clearOpenConnectionTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1936
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clearConnectionTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1937
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clearUseSsl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1938
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->clearBlacklistMccMnc()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    .line 1939
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->cachedSize:I

    .line 1940
    return-object p0
.end method

.method public clearBlacklistMccMnc()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1925
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc_:Ljava/util/List;

    .line 1926
    return-object p0
.end method

.method public clearConnectionTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1880
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasConnectionTimeoutMsec:Z

    .line 1881
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    .line 1882
    return-object p0
.end method

.method public clearHeader()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHeader:Z

    .line 1813
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    .line 1814
    return-object p0
.end method

.method public clearHost()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    .line 1778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHost:Z

    .line 1779
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    .line 1780
    return-object p0
.end method

.method public clearInBufferSize()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1846
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasInBufferSize:Z

    .line 1847
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    .line 1848
    return-object p0
.end method

.method public clearOpenConnectionTimeoutMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1863
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOpenConnectionTimeoutMsec:Z

    .line 1864
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    .line 1865
    return-object p0
.end method

.method public clearOutBufferSize()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1829
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOutBufferSize:Z

    .line 1830
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    .line 1831
    return-object p0
.end method

.method public clearPort()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1795
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasPort:Z

    .line 1796
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    .line 1797
    return-object p0
.end method

.method public clearUseSsl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1897
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasUseSsl:Z

    .line 1898
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    .line 1899
    return-object p0
.end method

.method public getBlacklistMccMnc(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBlacklistMccMncCount()I
    .locals 1

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBlacklistMccMncList()Ljava/util/List;
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
    .line 1907
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1982
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getSerializedSize()I

    .line 1986
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->cachedSize:I

    return v0
.end method

.method public getConnectionTimeoutMsec()I
    .locals 1

    .prologue
    .line 1872
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    return-object v0
.end method

.method public getInBufferSize()I
    .locals 1

    .prologue
    .line 1838
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    return v0
.end method

.method public getOpenConnectionTimeoutMsec()I
    .locals 1

    .prologue
    .line 1855
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    return v0
.end method

.method public getOutBufferSize()I
    .locals 1

    .prologue
    .line 1821
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1787
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1991
    const/4 v3, 0x0

    .line 1992
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHost()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1993
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1996
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasPort()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1997
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getPort()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2000
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHeader()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2001
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2004
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOutBufferSize()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2005
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getOutBufferSize()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2008
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasInBufferSize()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2009
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getInBufferSize()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2012
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOpenConnectionTimeoutMsec()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2013
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getOpenConnectionTimeoutMsec()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2016
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasConnectionTimeoutMsec()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2017
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getConnectionTimeoutMsec()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2020
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasUseSsl()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2021
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getUseSsl()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 2025
    :cond_7
    const/4 v0, 0x0

    .line 2026
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getBlacklistMccMncList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2027
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2030
    .end local v1           #element:I
    :cond_8
    add-int/2addr v3, v0

    .line 2031
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getBlacklistMccMncList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2033
    iput v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->cachedSize:I

    .line 2034
    return v3
.end method

.method public getUseSsl()Z
    .locals 1

    .prologue
    .line 1889
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    return v0
.end method

.method public hasConnectionTimeoutMsec()Z
    .locals 1

    .prologue
    .line 1873
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasConnectionTimeoutMsec:Z

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 1805
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHeader:Z

    return v0
.end method

.method public hasHost()Z
    .locals 1

    .prologue
    .line 1771
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHost:Z

    return v0
.end method

.method public hasInBufferSize()Z
    .locals 1

    .prologue
    .line 1839
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasInBufferSize:Z

    return v0
.end method

.method public hasOpenConnectionTimeoutMsec()Z
    .locals 1

    .prologue
    .line 1856
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOpenConnectionTimeoutMsec:Z

    return v0
.end method

.method public hasOutBufferSize()Z
    .locals 1

    .prologue
    .line 1822
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOutBufferSize:Z

    return v0
.end method

.method public hasPort()Z
    .locals 1

    .prologue
    .line 1788
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasPort:Z

    return v0
.end method

.method public hasUseSsl()Z
    .locals 1

    .prologue
    .line 1890
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasUseSsl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1944
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
    .line 1761
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2042
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2043
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2047
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2048
    :sswitch_0
    return-object p0

    .line 2053
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setHost(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    goto :goto_0

    .line 2057
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setPort(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    goto :goto_0

    .line 2061
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setHeader(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    goto :goto_0

    .line 2065
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setOutBufferSize(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    goto :goto_0

    .line 2069
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setInBufferSize(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    goto :goto_0

    .line 2073
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setOpenConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    goto :goto_0

    .line 2077
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    goto :goto_0

    .line 2081
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->setUseSsl(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    goto :goto_0

    .line 2085
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->addBlacklistMccMnc(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;

    goto :goto_0

    .line 2043
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public setBlacklistMccMnc(II)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->blacklistMccMnc_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1915
    return-object p0
.end method

.method public setConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasConnectionTimeoutMsec:Z

    .line 1876
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->connectionTimeoutMsec_:I

    .line 1877
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHeader:Z

    .line 1808
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->header_:Ljava/lang/String;

    .line 1809
    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHost:Z

    .line 1774
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->host_:Ljava/lang/String;

    .line 1775
    return-object p0
.end method

.method public setInBufferSize(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasInBufferSize:Z

    .line 1842
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->inBufferSize_:I

    .line 1843
    return-object p0
.end method

.method public setOpenConnectionTimeoutMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOpenConnectionTimeoutMsec:Z

    .line 1859
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->openConnectionTimeoutMsec_:I

    .line 1860
    return-object p0
.end method

.method public setOutBufferSize(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOutBufferSize:Z

    .line 1825
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->outBufferSize_:I

    .line 1826
    return-object p0
.end method

.method public setPort(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasPort:Z

    .line 1791
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->port_:I

    .line 1792
    return-object p0
.end method

.method public setUseSsl(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 1892
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasUseSsl:Z

    .line 1893
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->useSsl_:Z

    .line 1894
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
    .line 1950
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHost()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1951
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1953
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasPort()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1954
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getPort()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1956
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1957
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1959
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOutBufferSize()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1960
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getOutBufferSize()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1962
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasInBufferSize()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1963
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getInBufferSize()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1965
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasOpenConnectionTimeoutMsec()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1966
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getOpenConnectionTimeoutMsec()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1968
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasConnectionTimeoutMsec()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1969
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getConnectionTimeoutMsec()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1971
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->hasUseSsl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1972
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getUseSsl()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1974
    :cond_7
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServerInfo;->getBlacklistMccMncList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1975
    .local v0, element:I
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 1977
    .end local v0           #element:I
    :cond_8
    return-void
.end method
