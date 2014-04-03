.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguagePack"
.end annotation


# static fields
.field public static final BCP47_LOCALE_FIELD_NUMBER:I = 0x1

.field public static final COMPATIBLE_BCP47_LOCALES_FIELD_NUMBER:I = 0x2

.field public static final DOWNLOAD_URL_FIELD_NUMBER:I = 0x3

.field public static final LANGUAGE_PACK_FORMAT_VERSION_FIELD_NUMBER:I = 0x7

.field public static final LANGUAGE_PACK_ID_FIELD_NUMBER:I = 0x6

.field public static final MINIMUM_DEVICE_CLASS_FIELD_NUMBER:I = 0x8

.field public static final SIZE_KB_FIELD_NUMBER:I = 0x5

.field public static final VERSION_FIELD_NUMBER:I = 0x4


# instance fields
.field private bcp47Locale_:Ljava/lang/String;

.field private cachedSize:I

.field private compatibleBcp47Locales_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadUrl_:Ljava/lang/String;

.field private hasBcp47Locale:Z

.field private hasDownloadUrl:Z

.field private hasLanguagePackId:Z

.field private hasMinimumDeviceClass:Z

.field private hasSizeKb:Z

.field private hasVersion:Z

.field private languagePackFormatVersion_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private languagePackId_:Ljava/lang/String;

.field private minimumDeviceClass_:I

.field private sizeKb_:I

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4152
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    .line 4173
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales_:Ljava/util/List;

    .line 4207
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    .line 4224
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    .line 4241
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    .line 4258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    .line 4274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion_:Ljava/util/List;

    .line 4302
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    .line 4362
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->cachedSize:I

    .line 4152
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4480
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4474
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    return-object v0
.end method


# virtual methods
.method public addCompatibleBcp47Locales(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "value"

    .prologue
    .line 4190
    if-nez p1, :cond_0

    .line 4191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4193
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales_:Ljava/util/List;

    .line 4196
    :cond_1
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4197
    return-object p0
.end method

.method public addLanguagePackFormatVersion(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 2
    .parameter "value"

    .prologue
    .line 4288
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion_:Ljava/util/List;

    .line 4291
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4292
    return-object p0
.end method

.method public final clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4317
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->clearBcp47Locale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4318
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->clearCompatibleBcp47Locales()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4319
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->clearDownloadUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4320
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->clearVersion()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4321
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->clearSizeKb()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4322
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->clearLanguagePackId()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4323
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->clearLanguagePackFormatVersion()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4324
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->clearMinimumDeviceClass()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 4325
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->cachedSize:I

    .line 4326
    return-object p0
.end method

.method public clearBcp47Locale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasBcp47Locale:Z

    .line 4167
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    .line 4168
    return-object p0
.end method

.method public clearCompatibleBcp47Locales()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4200
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales_:Ljava/util/List;

    .line 4201
    return-object p0
.end method

.method public clearDownloadUrl()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasDownloadUrl:Z

    .line 4217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    .line 4218
    return-object p0
.end method

.method public clearLanguagePackFormatVersion()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4295
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion_:Ljava/util/List;

    .line 4296
    return-object p0
.end method

.method public clearLanguagePackId()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 4267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasLanguagePackId:Z

    .line 4268
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    .line 4269
    return-object p0
.end method

.method public clearMinimumDeviceClass()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4311
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasMinimumDeviceClass:Z

    .line 4312
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    .line 4313
    return-object p0
.end method

.method public clearSizeKb()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4250
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasSizeKb:Z

    .line 4251
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    .line 4252
    return-object p0
.end method

.method public clearVersion()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4233
    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasVersion:Z

    .line 4234
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    .line 4235
    return-object p0
.end method

.method public getBcp47Locale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4158
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4365
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->cachedSize:I

    if-gez v0, :cond_0

    .line 4367
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getSerializedSize()I

    .line 4369
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->cachedSize:I

    return v0
.end method

.method public getCompatibleBcp47Locales(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 4180
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCompatibleBcp47LocalesCount()I
    .locals 1

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCompatibleBcp47LocalesList()Ljava/util/List;
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
    .line 4176
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales_:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4208
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguagePackFormatVersion(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 4281
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLanguagePackFormatVersionCount()I
    .locals 1

    .prologue
    .line 4279
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLanguagePackFormatVersionList()Ljava/util/List;
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
    .line 4277
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion_:Ljava/util/List;

    return-object v0
.end method

.method public getLanguagePackId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4259
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    return-object v0
.end method

.method public getMinimumDeviceClass()I
    .locals 1

    .prologue
    .line 4303
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 4374
    const/4 v3, 0x0

    .line 4375
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasBcp47Locale()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4376
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4380
    :cond_0
    const/4 v0, 0x0

    .line 4381
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getCompatibleBcp47LocalesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4382
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 4385
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    add-int/2addr v3, v0

    .line 4386
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getCompatibleBcp47LocalesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 4388
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasDownloadUrl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4389
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4392
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4393
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4396
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasSizeKb()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4397
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getSizeKb()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4400
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasLanguagePackId()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4401
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 4405
    :cond_5
    const/4 v0, 0x0

    .line 4406
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackFormatVersionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4407
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 4410
    .end local v1           #element:I
    :cond_6
    add-int/2addr v3, v0

    .line 4411
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackFormatVersionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 4413
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasMinimumDeviceClass()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4414
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getMinimumDeviceClass()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 4417
    :cond_7
    iput v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->cachedSize:I

    .line 4418
    return v3
.end method

.method public getSizeKb()I
    .locals 1

    .prologue
    .line 4242
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 4225
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    return v0
.end method

.method public hasBcp47Locale()Z
    .locals 1

    .prologue
    .line 4159
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasBcp47Locale:Z

    return v0
.end method

.method public hasDownloadUrl()Z
    .locals 1

    .prologue
    .line 4209
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasDownloadUrl:Z

    return v0
.end method

.method public hasLanguagePackId()Z
    .locals 1

    .prologue
    .line 4260
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasLanguagePackId:Z

    return v0
.end method

.method public hasMinimumDeviceClass()Z
    .locals 1

    .prologue
    .line 4304
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasMinimumDeviceClass:Z

    return v0
.end method

.method public hasSizeKb()Z
    .locals 1

    .prologue
    .line 4243
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasSizeKb:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 4226
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4330
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
    .line 4149
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4426
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4427
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4431
    invoke-virtual {p0, p1, v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4432
    :sswitch_0
    return-object p0

    .line 4437
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->setBcp47Locale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto :goto_0

    .line 4441
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->addCompatibleBcp47Locales(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto :goto_0

    .line 4445
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->setDownloadUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto :goto_0

    .line 4449
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->setVersion(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto :goto_0

    .line 4453
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->setSizeKb(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto :goto_0

    .line 4457
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->setLanguagePackId(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto :goto_0

    .line 4461
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->addLanguagePackFormatVersion(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto :goto_0

    .line 4465
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->setMinimumDeviceClass(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto :goto_0

    .line 4427
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public setBcp47Locale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "value"

    .prologue
    .line 4161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasBcp47Locale:Z

    .line 4162
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->bcp47Locale_:Ljava/lang/String;

    .line 4163
    return-object p0
.end method

.method public setCompatibleBcp47Locales(ILjava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4183
    if-nez p2, :cond_0

    .line 4184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4186
    :cond_0
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->compatibleBcp47Locales_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4187
    return-object p0
.end method

.method public setDownloadUrl(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "value"

    .prologue
    .line 4211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasDownloadUrl:Z

    .line 4212
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->downloadUrl_:Ljava/lang/String;

    .line 4213
    return-object p0
.end method

.method public setLanguagePackFormatVersion(II)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4284
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackFormatVersion_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4285
    return-object p0
.end method

.method public setLanguagePackId(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "value"

    .prologue
    .line 4262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasLanguagePackId:Z

    .line 4263
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->languagePackId_:Ljava/lang/String;

    .line 4264
    return-object p0
.end method

.method public setMinimumDeviceClass(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "value"

    .prologue
    .line 4306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasMinimumDeviceClass:Z

    .line 4307
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->minimumDeviceClass_:I

    .line 4308
    return-object p0
.end method

.method public setSizeKb(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "value"

    .prologue
    .line 4245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasSizeKb:Z

    .line 4246
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->sizeKb_:I

    .line 4247
    return-object p0
.end method

.method public setVersion(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "value"

    .prologue
    .line 4228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasVersion:Z

    .line 4229
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->version_:I

    .line 4230
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
    .line 4336
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasBcp47Locale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4337
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4339
    :cond_0
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getCompatibleBcp47LocalesList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 4340
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 4342
    .end local v0           #element:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasDownloadUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4343
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4345
    :cond_2
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4346
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4348
    :cond_3
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasSizeKb()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4349
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getSizeKb()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4351
    :cond_4
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasLanguagePackId()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4352
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4354
    :cond_5
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackFormatVersionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4355
    .local v0, element:I
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_1

    .line 4357
    .end local v0           #element:I
    :cond_6
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasMinimumDeviceClass()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4358
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getMinimumDeviceClass()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4360
    :cond_7
    return-void
.end method
