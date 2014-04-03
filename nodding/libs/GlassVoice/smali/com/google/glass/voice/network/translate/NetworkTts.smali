.class public Lcom/google/glass/voice/network/translate/NetworkTts;
.super Ljava/lang/Object;
.source "NetworkTts.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field static final CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type; = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String; = null

.field private static final REQUEST_DEFAULT_QUERY_PARAMETERS:Ljava/lang/String; = "ie=utf-8&client=glass"

.field public static final REQUEST_HOST:Ljava/lang/String; = "translate.google.com"

.field public static final REQUEST_PATH:Ljava/lang/String; = "/translate_tts"

.field private static final REQUEST_SCHEME:Ljava/lang/String; = "http"

.field private static final TARGET_LANG:Ljava/lang/String; = "tl"

.field private static final TARGET_TEXT:Ljava/lang/String; = "text"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static networkTtsSupportedLanguages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static player:Landroid/media/MediaPlayer;

.field private static sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;


# instance fields
.field private loader:Lcom/google/glass/util/CachedFilesManager$Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/util/CachedFilesManager$Loader",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 50
    sget-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->AUDIO:Lcom/google/glass/util/CachedFilesManager$Type;

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 74
    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "af"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sq"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ca"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "zh-CN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "zh-TW"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hr"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "eo"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hi"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "ht"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "id"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "is"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "ku"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "la"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "lv"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "mk"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "sr"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "es"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sw"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ta"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "th"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "vi"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "cy"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/HashSet;

    .line 126
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/HashSet;

    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->NETWORK_TTS_SUPPORTED_LANGUAGES:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/google/glass/voice/network/translate/NetworkTts$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/translate/NetworkTts$1;-><init>(Lcom/google/glass/voice/network/translate/NetworkTts;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->loader:Lcom/google/glass/util/CachedFilesManager$Loader;

    return-void
.end method

.method static synthetic access$000()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput-object p0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static formatCacheFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 303
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getHeaders()Ljava/util/Map;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 291
    .local v0, defaultHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/google/glass/net/UserAgent;->get()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-object v0
.end method

.method public static getNetworkTtsUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "languageCode"

    .prologue
    .line 263
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    :cond_0
    sget-object v1, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Network TTS not supported for \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    const/4 v1, 0x0

    .line 275
    :goto_0
    return-object v1

    .line 268
    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 269
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "translate.google.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/translate_tts"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "ie=utf-8&client=glass"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "tl"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 275
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSharedInstance()Lcom/google/glass/voice/network/translate/NetworkTts;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-direct {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;-><init>()V

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;

    .line 168
    :cond_0
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;

    return-object v0
.end method

.method public static isLanguageSupported(Ljava/lang/String;)Z
    .locals 1
    .parameter "languageCode"

    .prologue
    .line 282
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->networkTtsSupportedLanguages:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTtsPlaying()Z
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSharedInstance(Lcom/google/glass/voice/network/translate/NetworkTts;)V
    .locals 0
    .parameter "instance"

    .prologue
    .line 172
    sput-object p0, Lcom/google/glass/voice/network/translate/NetworkTts;->sharedInstance:Lcom/google/glass/voice/network/translate/NetworkTts;

    .line 173
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mediaPlayer"

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 313
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    .line 314
    return-void
.end method

.method public requestTtsAndPlay(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "context"
    .parameter "networkUri"

    .prologue
    .line 194
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->isOnSerialInstanceThread()Z

    move-result v2

    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 197
    invoke-static {p2}, Lcom/google/glass/voice/network/translate/NetworkTts;->formatCacheFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/voice/network/translate/NetworkTts;->streamFromCache(Ljava/lang/String;)Z

    move-result v1

    .line 198
    .local v1, gotData:Z
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 200
    invoke-static {p1}, Lcom/google/glass/net/HttpRequestDispatcherManager;->getSharedDispatcher(Landroid/content/Context;)Lcom/google/glass/net/HttpRequestDispatcher;

    move-result-object v0

    .line 201
    .local v0, dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/voice/network/translate/NetworkTts;->streamFromServer(Lcom/google/glass/net/HttpRequestDispatcher;Ljava/lang/String;)Z

    move-result v1

    .line 204
    .end local v0           #dispatcher:Lcom/google/glass/net/HttpRequestDispatcher;
    :cond_0
    if-nez v1, :cond_1

    .line 207
    sget-object v2, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Could not obtain TTS from either local cache or network"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :cond_1
    return v1
.end method

.method public stopSpeaking()V
    .locals 1

    .prologue
    .line 320
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager;->isOnSerialInstanceThread()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 322
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 324
    sget-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 325
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/translate/NetworkTts;->player:Landroid/media/MediaPlayer;

    .line 327
    :cond_0
    return-void
.end method

.method streamFromCache(Ljava/lang/String;)Z
    .locals 6
    .parameter "cacheFileName"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    .line 219
    .local v0, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    sget-object v3, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v0, v3, p1}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, filePath:Ljava/lang/String;
    sget-object v3, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v0, v3, p1}, Lcom/google/glass/util/CachedFilesManager;->contains(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    sget-object v3, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Streaming from cache file: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/network/translate/NetworkTts;->loader:Lcom/google/glass/util/CachedFilesManager$Loader;

    invoke-virtual {v2, v1, v3}, Lcom/google/glass/util/CachedFilesManager;->load(Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 225
    :cond_0
    return v2
.end method

.method streamFromServer(Lcom/google/glass/net/HttpRequestDispatcher;Ljava/lang/String;)Z
    .locals 9
    .parameter "dispatcher"
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 234
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Streaming from the TTS server: %s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {p1, p2, v4, v5}, Lcom/google/glass/net/HttpRequestDispatcher;->postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;

    move-result-object v2

    .line 240
    .local v2, response:Lcom/google/glass/net/SimplifiedHttpResponse;
    if-nez v2, :cond_1

    .line 241
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No results returned from TTS server"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_0
    :goto_0
    return v3

    .line 242
    :cond_1
    iget v4, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v5, 0x194

    if-ne v4, v5, :cond_2

    .line 243
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "TTS not found"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    :cond_2
    iget v4, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    .line 245
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "TTS Server error code: %s"

    new-array v6, v8, [Ljava/lang/Object;

    iget v7, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->statusCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_3
    iget-object v4, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v4, v4

    if-lez v4, :cond_0

    .line 247
    invoke-static {p2}, Lcom/google/glass/voice/network/translate/NetworkTts;->formatCacheFileNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, cacheFileName:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/voice/network/translate/NetworkTts;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Write %s bytes of audio data to file %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v0, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    .line 250
    .local v1, cachedFilesManager:Lcom/google/glass/util/CachedFilesManager;
    sget-object v3, Lcom/google/glass/voice/network/translate/NetworkTts;->CACHE_FILE_TYPE:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v4, v2, Lcom/google/glass/net/SimplifiedHttpResponse;->body:[B

    invoke-static {v4}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    .line 254
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->streamFromCache(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method
