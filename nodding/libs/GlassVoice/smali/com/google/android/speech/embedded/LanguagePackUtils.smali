.class public Lcom/google/android/speech/embedded/LanguagePackUtils;
.super Ljava/lang/Object;
.source "LanguagePackUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDownloadFilename(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Ljava/lang/String;
    .locals 2
    .parameter "pack"

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findById(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/util/List;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1
    .parameter "target"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;)",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/speech/embedded/LanguagePackUtils;->findById(Ljava/lang/String;Ljava/util/List;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    return-object v0
.end method

.method public static findById(Ljava/lang/String;Ljava/util/List;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 4
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;)",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 46
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 48
    .local v2, listItem:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    .end local v2           #listItem:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :goto_1
    return-object v2

    .line 46
    .restart local v2       #listItem:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v2           #listItem:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getInstallableLanguagePacks(Ljava/util/List;[IILjava/util/Map;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter "supportedVersions"
    .parameter "deviceClass"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;[II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, all:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    .local p3, installed:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v0, available:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 121
    .local v3, pack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-static {v3, p1, p2}, Lcom/google/android/speech/embedded/LanguagePackUtils;->isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 124
    .local v1, existing:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 125
    :cond_1
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    .end local v1           #existing:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .end local v3           #pack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v4, returnedLanguages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    return-object v4
.end method

.method public static isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)Z
    .locals 7
    .parameter "languagePack"
    .parameter "supportedVersions"
    .parameter "deviceClass"

    .prologue
    const/4 v5, 0x0

    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, compatibleWithEngine:Z
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackFormatVersionCount()I

    move-result v2

    .line 66
    .local v2, count:I
    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v5

    .line 70
    :cond_1
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackFormatVersion(I)I

    move-result v3

    .line 72
    .local v3, formatVersion:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, p1

    if-ge v4, v6, :cond_2

    .line 73
    aget v6, p1, v4

    if-ne v6, v3, :cond_5

    .line 74
    const/4 v1, 0x1

    .line 79
    :cond_2
    const/4 v0, 0x0

    .line 83
    .local v0, compatibleWithDevice:Z
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getMinimumDeviceClass()I

    move-result v6

    if-ge p2, v6, :cond_3

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->hasMinimumDeviceClass()Z

    move-result v6

    if-nez v6, :cond_4

    .line 85
    :cond_3
    const/4 v0, 0x1

    .line 88
    :cond_4
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 72
    .end local v0           #compatibleWithDevice:Z
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static isUpgradeable(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/util/List;[II)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 6
    .parameter "pack"
    .parameter
    .parameter "supportedVersions"
    .parameter "deviceClass"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;[II)",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, all:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, locale:Ljava/lang/String;
    const/4 v3, 0x0

    .line 97
    .local v3, potential:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 100
    .local v0, candidate:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    invoke-static {v0, p2, p3}, Lcom/google/android/speech/embedded/LanguagePackUtils;->isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 105
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 106
    :cond_1
    move-object v3, v0

    goto :goto_0

    .line 111
    .end local v0           #candidate:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :cond_2
    return-object v3
.end method
