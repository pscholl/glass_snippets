.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalizedResources"
.end annotation


# static fields
.field public static final JAVA_LOCALE_FIELD_NUMBER:I = 0x1

.field public static final RESOURCES_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasJavaLocale:Z

.field private javaLocale_:Ljava/lang/String;

.field private resources_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3838
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3843
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    .line 3859
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources_:Ljava/util/List;

    .line 3912
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->cachedSize:I

    .line 3838
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3974
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3968
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    return-object v0
.end method


# virtual methods
.method public addResources(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1
    .parameter "value"

    .prologue
    .line 3876
    if-nez p1, :cond_0

    .line 3877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3879
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3880
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources_:Ljava/util/List;

    .line 3882
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3883
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1

    .prologue
    .line 3891
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->clearJavaLocale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    .line 3892
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->clearResources()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    .line 3893
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->cachedSize:I

    .line 3894
    return-object p0
.end method

.method public clearJavaLocale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1

    .prologue
    .line 3852
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->hasJavaLocale:Z

    .line 3853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    .line 3854
    return-object p0
.end method

.method public clearResources()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1

    .prologue
    .line 3886
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources_:Ljava/util/List;

    .line 3887
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3915
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->cachedSize:I

    if-gez v0, :cond_0

    .line 3917
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->getSerializedSize()I

    .line 3919
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->cachedSize:I

    return v0
.end method

.method public getJavaLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3844
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getResources(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .locals 1
    .parameter "index"

    .prologue
    .line 3866
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    return-object v0
.end method

.method public getResourcesCount()I
    .locals 1

    .prologue
    .line 3864
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3862
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3924
    const/4 v2, 0x0

    .line 3925
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->hasJavaLocale()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3926
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->getJavaLocale()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3929
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->getResourcesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    .line 3930
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 3933
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    :cond_1
    iput v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->cachedSize:I

    .line 3934
    return v2
.end method

.method public hasJavaLocale()Z
    .locals 1

    .prologue
    .line 3845
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->hasJavaLocale:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3898
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
    .line 3835
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3942
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3943
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 3947
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3948
    :sswitch_0
    return-object p0

    .line 3953
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->setJavaLocale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    goto :goto_0

    .line 3957
    :sswitch_2
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;-><init>()V

    .line 3958
    .local v1, value:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 3959
    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->addResources(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    goto :goto_0

    .line 3943
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setJavaLocale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1
    .parameter "value"

    .prologue
    .line 3847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->hasJavaLocale:Z

    .line 3848
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    .line 3849
    return-object p0
.end method

.method public setResources(ILcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3869
    if-nez p2, :cond_0

    .line 3870
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3872
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3873
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
    .line 3904
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->hasJavaLocale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3905
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->getJavaLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3907
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->getResourcesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    .line 3908
    .local v0, element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 3910
    .end local v0           #element:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    :cond_1
    return-void
.end method
