.class public Lcom/google/glass/net/upload/SessionTracker;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TRACKING_PREFS_FILENAME:Ljava/lang/String; = "resumable_upload_tracking_prefs"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/net/upload/SessionTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/glass/net/upload/SessionTracker;->$assertionsDisabled:Z

    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "resumable_upload_tracking_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method


# virtual methods
.method public clearSessionUri(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public getSessionUri(Ljava/io/File;)Ljava/net/URI;
    .locals 8
    .parameter "file"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, stringifiedUri:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, key:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    sget-object v4, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "No URI was previously stored for %s -- returning null."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-object v3

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/ClassCastException;
    sget-object v4, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Ran into a non-string pref for %s -- removing and returning null."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v4, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 55
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_0
    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    .local v0, e:Ljava/net/URISyntaxException;
    sget-object v4, Lcom/google/glass/net/upload/SessionTracker;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "URI stored in tracking prefs wasn\'t valid -- returning null!"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSessionUri(Ljava/io/File;Ljava/net/URI;)Z
    .locals 3
    .parameter "file"
    .parameter "sessionUri"

    .prologue
    .line 70
    sget-boolean v0, Lcom/google/glass/net/upload/SessionTracker;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/glass/net/upload/SessionTracker;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
