.class public Lcom/google/glass/logging/LoggingApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "LoggingApplication.java"

# interfaces
.implements Lcom/google/glass/companion/CompanionStateChangeListener;


# static fields
.field private static final CACHED_FILES_DIRECTORY:Ljava/lang/String; = null

.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x2710

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x40000000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private pendingBundle:Landroid/os/Bundle;

.field private proxy:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/logging/LoggingApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/LoggingApplication;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "glass_bugreports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/LoggingApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/logging/LoggingApplication;
    .locals 3
    .parameter "context"

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, applicationContext:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/logging/LoggingApplication;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/google/glass/logging/LoggingApplication;

    .end local v0           #applicationContext:Landroid/content/Context;
    return-object v0

    .line 62
    .restart local v0       #applicationContext:Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the LoggingApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 49
    new-instance v0, Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 50
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/RemoteCompanionProxy;->addListener(Lcom/google/glass/companion/CompanionStateChangeListener;)V

    .line 51
    return-void
.end method

.method public onStateChange(ZII)V
    .locals 1
    .parameter "isConnected"
    .parameter "remoteVersion"
    .parameter "localVersion"

    .prologue
    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->pendingBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/LoggingApplication;->sendBundleToCompanion(Landroid/os/Bundle;)V

    .line 91
    :cond_0
    return-void
.end method

.method public sendBundleToCompanion(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 74
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 75
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->proxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    goto :goto_0

    .line 82
    :cond_1
    iput-object p1, p0, Lcom/google/glass/logging/LoggingApplication;->pendingBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected setupCachedFilesManager()V
    .locals 5

    .prologue
    .line 69
    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/logging/LoggingApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    const-wide/32 v2, 0x40000000

    const/16 v4, 0x2710

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V

    .line 71
    return-void
.end method
