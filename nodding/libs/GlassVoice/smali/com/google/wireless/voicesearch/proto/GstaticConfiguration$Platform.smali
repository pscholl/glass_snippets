.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Platform"
.end annotation


# static fields
.field public static final ENABLED_NOISE_SUPPRESSORS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private enabledNoiseSuppressors_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 865
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors_:Ljava/util/List;

    .line 914
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->cachedSize:I

    .line 861
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 971
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 965
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    return-object v0
.end method


# virtual methods
.method public addEnabledNoiseSuppressors(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1
    .parameter "value"

    .prologue
    .line 882
    if-nez p1, :cond_0

    .line 883
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors_:Ljava/util/List;

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 889
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->clearEnabledNoiseSuppressors()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    .line 898
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->cachedSize:I

    .line 899
    return-object p0
.end method

.method public clearEnabledNoiseSuppressors()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1

    .prologue
    .line 892
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors_:Ljava/util/List;

    .line 893
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->cachedSize:I

    if-gez v0, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->getSerializedSize()I

    .line 921
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->cachedSize:I

    return v0
.end method

.method public getEnabledNoiseSuppressors(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledNoiseSuppressorsCount()I
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledNoiseSuppressorsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 926
    const/4 v3, 0x0

    .line 928
    .local v3, size:I
    const/4 v0, 0x0

    .line 929
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->getEnabledNoiseSuppressorsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 930
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 933
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    add-int/2addr v3, v0

    .line 934
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->getEnabledNoiseSuppressorsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 936
    iput v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->cachedSize:I

    .line 937
    return v3
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 903
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
    .line 858
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 945
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 946
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 950
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 951
    :sswitch_0
    return-object p0

    .line 956
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->addEnabledNoiseSuppressors(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    goto :goto_0

    .line 946
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setEnabledNoiseSuppressors(ILjava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 875
    if-nez p2, :cond_0

    .line 876
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->enabledNoiseSuppressors_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 879
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
    .line 909
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;->getEnabledNoiseSuppressorsList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 910
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 912
    .end local v0           #element:Ljava/lang/String;
    :cond_0
    return-void
.end method
