.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Personalization"
.end annotation


# static fields
.field public static final DASHBOARD_URL_FIELD_NUMBER:I = 0x2

.field public static final MCC_COUNTRY_CODES_FIELD_NUMBER:I = 0x1

.field public static final MORE_INFO_URL_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private dashboardUrl_:Ljava/lang/String;

.field private hasDashboardUrl:Z

.field private hasMoreInfoUrl:Z

.field private mccCountryCodes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private moreInfoUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3982
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3986
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes_:Ljava/util/List;

    .line 4014
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    .line 4031
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    .line 4071
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->cachedSize:I

    .line 3982
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4144
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4138
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    return-object v0
.end method


# virtual methods
.method public addMccCountryCodes(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 2
    .parameter "value"

    .prologue
    .line 4000
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4001
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes_:Ljava/util/List;

    .line 4003
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4004
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1

    .prologue
    .line 4046
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->clearMccCountryCodes()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 4047
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->clearDashboardUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 4048
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->clearMoreInfoUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    .line 4049
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->cachedSize:I

    .line 4050
    return-object p0
.end method

.method public clearDashboardUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1

    .prologue
    .line 4023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasDashboardUrl:Z

    .line 4024
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    .line 4025
    return-object p0
.end method

.method public clearMccCountryCodes()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1

    .prologue
    .line 4007
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes_:Ljava/util/List;

    .line 4008
    return-object p0
.end method

.method public clearMoreInfoUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1

    .prologue
    .line 4040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasMoreInfoUrl:Z

    .line 4041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    .line 4042
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4074
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->cachedSize:I

    if-gez v0, :cond_0

    .line 4076
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->getSerializedSize()I

    .line 4078
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->cachedSize:I

    return v0
.end method

.method public getDashboardUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4015
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMccCountryCodes(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 3993
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMccCountryCodesCount()I
    .locals 1

    .prologue
    .line 3991
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMccCountryCodesList()Ljava/util/List;
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
    .line 3989
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes_:Ljava/util/List;

    return-object v0
.end method

.method public getMoreInfoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4032
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 4083
    const/4 v3, 0x0

    .line 4085
    .local v3, size:I
    const/4 v0, 0x0

    .line 4086
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->getMccCountryCodesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4087
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 4090
    .end local v1           #element:I
    :cond_0
    add-int/2addr v3, v0

    .line 4091
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->getMccCountryCodesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 4093
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasDashboardUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4094
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->getDashboardUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4097
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasMoreInfoUrl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4098
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->getMoreInfoUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4101
    :cond_2
    iput v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->cachedSize:I

    .line 4102
    return v3
.end method

.method public hasDashboardUrl()Z
    .locals 1

    .prologue
    .line 4016
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasDashboardUrl:Z

    return v0
.end method

.method public hasMoreInfoUrl()Z
    .locals 1

    .prologue
    .line 4033
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasMoreInfoUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4054
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
    .line 3979
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4110
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4111
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4115
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4116
    :sswitch_0
    return-object p0

    .line 4121
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->addMccCountryCodes(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    goto :goto_0

    .line 4125
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->setDashboardUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    goto :goto_0

    .line 4129
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->setMoreInfoUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;

    goto :goto_0

    .line 4111
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setDashboardUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1
    .parameter "value"

    .prologue
    .line 4018
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasDashboardUrl:Z

    .line 4019
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->dashboardUrl_:Ljava/lang/String;

    .line 4020
    return-object p0
.end method

.method public setMccCountryCodes(II)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3996
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->mccCountryCodes_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3997
    return-object p0
.end method

.method public setMoreInfoUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;
    .locals 1
    .parameter "value"

    .prologue
    .line 4035
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasMoreInfoUrl:Z

    .line 4036
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->moreInfoUrl_:Ljava/lang/String;

    .line 4037
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
    .line 4060
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->getMccCountryCodesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4061
    .local v0, element:I
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 4063
    .end local v0           #element:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasDashboardUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4064
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->getDashboardUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4066
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->hasMoreInfoUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4067
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Personalization;->getMoreInfoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4069
    :cond_2
    return-void
.end method
