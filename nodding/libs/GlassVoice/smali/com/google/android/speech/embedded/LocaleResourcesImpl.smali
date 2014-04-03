.class Lcom/google/android/speech/embedded/LocaleResourcesImpl;
.super Ljava/lang/Object;
.source "LocaleResourcesImpl.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3DataManager$LocaleResources;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VS.LocaleResourcesImpl"


# instance fields
.field private mConfigPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigToPathMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGrammarsToPathsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/speech/embedded/Greco3Grammar;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLanguageMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

.field private final mPathToMetadataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mResourcePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedFormatVersions:[I

.field private mSystemPartition:Z

.field private final mUnprocessedGrammars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([I)V
    .locals 1
    .parameter "supportedFormatVersions"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mGrammarsToPathsMap:Ljava/util/HashMap;

    .line 43
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigToPathMap:Ljava/util/HashMap;

    .line 44
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mPathToMetadataMap:Ljava/util/HashMap;

    .line 45
    iput-object p1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mSupportedFormatVersions:[I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mUnprocessedGrammars:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private getCompatiblePaths()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->getMostRecentLanguagePackId()Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, languagePackId:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 207
    const/4 v1, 0x0

    .line 219
    :cond_0
    return-object v1

    .line 210
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v1, compatible:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v5, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mPathToMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 213
    .local v0, allPaths:Ljava/util/Set;,"Ljava/util/Set<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 214
    .local v4, path:Ljava/io/File;
    iget-object v5, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mPathToMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 215
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getMostRecentLanguagePackId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 228
    iget-object v6, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mPathToMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 229
    const/4 v1, 0x0

    .line 253
    :cond_0
    return-object v1

    .line 232
    :cond_1
    iget-object v6, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mPathToMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 233
    .local v5, paths:Ljava/util/Set;,"Ljava/util/Set<Ljava/io/File;>;"
    const/4 v2, -0x1

    .line 234
    .local v2, mostRecentVersion:I
    const/4 v1, 0x0

    .line 236
    .local v1, langPackId:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 237
    .local v4, path:Ljava/io/File;
    iget-object v6, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mPathToMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 244
    .local v3, pack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    iget-object v6, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mSupportedFormatVersions:[I

    const v7, 0x7fffffff

    invoke-static {v3, v6, v7}, Lcom/google/android/speech/embedded/LanguagePackUtils;->isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v6

    if-le v6, v2, :cond_2

    .line 247
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v2

    .line 248
    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseMetadata(Ljava/io/File;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 5
    .parameter "metadataFile"

    .prologue
    .line 272
    const/4 v3, 0x0

    .line 273
    .local v3, metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    const/4 v0, 0x0

    .line 275
    .local v0, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v0           #fis:Ljava/io/FileInputStream;
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v4

    invoke-static {v4}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 280
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    move-object v4, v3

    .line 283
    :goto_0
    return-object v4

    .line 277
    :catch_0
    move-exception v2

    .line 278
    .local v2, ioe:Ljava/io/IOException;
    :goto_1
    const/4 v4, 0x0

    .line 280
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 277
    .end local v0           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private processLocaleSource()V
    .locals 4

    .prologue
    .line 156
    sget-object v3, Lcom/google/android/speech/embedded/Greco3DataManager;->SYSTEM_DATA_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, systemDirString:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mPathToMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 158
    .local v1, path:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mSystemPartition:Z

    .line 165
    .end local v1           #path:Ljava/io/File;
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mSystemPartition:Z

    goto :goto_0
.end method


# virtual methods
.method addConfig(Lcom/google/android/speech/embedded/Greco3Mode;Ljava/io/File;)V
    .locals 2
    .parameter "type"
    .parameter "file"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigToPathMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 189
    .local v0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigToPathMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v0           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigToPathMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method addGrammar(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .parameter "grammar"
    .parameter "revisionName"
    .parameter "directory"
    .parameter "metaData"

    .prologue
    .line 168
    invoke-static {p4}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->parseMetadata(Ljava/io/File;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    .line 170
    .local v0, languagePack:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-eqz v0, :cond_0

    .line 171
    iget-object v1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mUnprocessedGrammars:Ljava/util/ArrayList;

    new-instance v2, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;-><init>(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/io/File;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    return-void
.end method

.method addMetadata(Ljava/io/File;)V
    .locals 4
    .parameter "file"

    .prologue
    .line 195
    invoke-static {p1}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->parseMetadata(Ljava/io/File;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v0

    .line 196
    .local v0, metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-nez v0, :cond_0

    .line 197
    const-string v1, "VS.LocaleResourcesImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparsable metadata : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mPathToMetadataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigPaths:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "grammar"
    .parameter "revisionId"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mGrammarsToPathsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 71
    .local v0, revisionsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLanguageMetadata()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mLanguageMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    return-object v0
.end method

.method public getResourcePaths()Ljava/util/List;
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
    .line 56
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mResourcePaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isInstalledInSystemPartition()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mSystemPartition:Z

    return v0
.end method

.method public isUsingDownloadedData()Z
    .locals 3

    .prologue
    .line 90
    iget-object v2, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mResourcePaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, path:Ljava/lang/String;
    const-string v2, "g3_models"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 92
    const/4 v2, 0x1

    .line 96
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method processGrammar(Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mGrammarsToPathsMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;->grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 178
    .local v0, revisionsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 179
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mGrammarsToPathsMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;->grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_0
    iget-object v1, p1, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;->revisionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method

.method processLocaleData()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 102
    invoke-direct {p0}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->processLocaleSource()V

    .line 104
    invoke-direct {p0}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->getCompatiblePaths()Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    .local v0, compatiblePaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz v0, :cond_7

    .line 107
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mResourcePaths:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 110
    .local v4, path:Ljava/io/File;
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mResourcePaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    .end local v4           #path:Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigPaths:Ljava/util/HashMap;

    .line 114
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigToPathMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/speech/embedded/Greco3Mode;

    .line 117
    .local v6, type:Lcom/google/android/speech/embedded/Greco3Mode;
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigToPathMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 118
    .local v5, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 119
    .restart local v4       #path:Ljava/io/File;
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mResourcePaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigPaths:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 126
    const-string v9, "VS.LocaleResourcesImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate config file, found at: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", overwriting: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigPaths:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_3
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigPaths:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 135
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #path:Ljava/io/File;
    .end local v5           #paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v6           #type:Lcom/google/android/speech/embedded/Greco3Mode;
    :cond_4
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mResourcePaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mConfigPaths:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 136
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mPathToMetadataMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    iput-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mLanguageMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .line 140
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mUnprocessedGrammars:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;

    .line 141
    .local v1, gi:Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;
    iget-object v7, v1, Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;->metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual {v7}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mLanguageMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual {v8}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 143
    invoke-virtual {p0, v1}, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->processGrammar(Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;)V

    goto :goto_2

    .line 147
    .end local v1           #gi:Lcom/google/android/speech/embedded/LocaleResourcesImpl$GrammarInfo;
    :cond_6
    iget-object v7, p0, Lcom/google/android/speech/embedded/LocaleResourcesImpl;->mUnprocessedGrammars:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 148
    const/4 v7, 0x1

    .line 152
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_3
    return v7

    :cond_7
    move v7, v8

    goto :goto_3
.end method
