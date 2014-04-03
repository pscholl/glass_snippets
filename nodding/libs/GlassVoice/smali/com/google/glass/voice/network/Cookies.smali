.class public Lcom/google/glass/voice/network/Cookies;
.super Ljava/lang/Object;
.source "Cookies.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private cookieManager:Landroid/webkit/CookieManager;

.field private cookieSyncManager:Landroid/webkit/CookieSyncManager;

.field private final initializeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/Cookies;->initializeLock:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/google/glass/voice/network/Cookies;->context:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/glass/voice/network/Cookies;
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    new-instance v0, Lcom/google/glass/voice/network/Cookies;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/Cookies;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isInitialized()Z
    .locals 2

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/glass/voice/network/Cookies;->initializeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private maybeInitialize()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/glass/voice/network/Cookies;->initializeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/glass/voice/network/Cookies;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 45
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    .line 46
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieManager:Landroid/webkit/CookieManager;

    .line 48
    :cond_0
    monitor-exit v1

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/glass/voice/network/Cookies;->maybeInitialize()V

    .line 80
    iget-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAllCookies()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/google/glass/voice/network/Cookies;->maybeInitialize()V

    .line 111
    iget-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 112
    return-void
.end method

.method public resetSync()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/glass/voice/network/Cookies;->maybeInitialize()V

    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 60
    return-void
.end method

.method public setCookiesFromHeaders(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v1, "Set-Cookie"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 106
    .local v0, cookies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/voice/network/Cookies;->setCookiesFromSetCookieHeaders(Ljava/lang/String;Ljava/util/List;)V

    .line 107
    return-void
.end method

.method public setCookiesFromSetCookieHeaders(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, cookies:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    if-eqz p2, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/google/glass/voice/network/Cookies;->maybeInitialize()V

    .line 88
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    .local v0, c:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/glass/voice/network/Cookies;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v2, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public startSync()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/glass/voice/network/Cookies;->maybeInitialize()V

    .line 64
    iget-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 65
    return-void
.end method

.method public stopSync()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/glass/voice/network/Cookies;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 71
    :cond_0
    return-void
.end method

.method public sync()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/glass/voice/network/Cookies;->maybeInitialize()V

    .line 75
    iget-object v0, p0, Lcom/google/glass/voice/network/Cookies;->cookieSyncManager:Landroid/webkit/CookieSyncManager;

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 76
    return-void
.end method
