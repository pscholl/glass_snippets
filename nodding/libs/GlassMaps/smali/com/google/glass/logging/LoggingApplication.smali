.class public Lcom/google/glass/logging/LoggingApplication;
.super Lcom/google/glass/app/GlassApplication;

# interfaces
.implements Lcom/google/glass/companion/b;


# static fields
.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Landroid/os/Bundle;

.field private g:Lcom/google/glass/companion/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/glass/logging/LoggingApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/LoggingApplication;->d:Ljava/lang/String;

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

    sput-object v0, Lcom/google/glass/logging/LoggingApplication;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/glass/logging/LoggingApplication;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/google/glass/logging/LoggingApplication;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/glass/logging/LoggingApplication;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The context must be a child of the LoggingApplication context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/google/glass/f/a;->c()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->g:Lcom/google/glass/companion/ae;

    invoke-virtual {v0}, Lcom/google/glass/companion/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->g:Lcom/google/glass/companion/ae;

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/ae;->a(Landroid/os/Bundle;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/google/glass/logging/LoggingApplication;->f:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public final a(ZII)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->f:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/LoggingApplication;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 5

    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/logging/LoggingApplication;->e:Ljava/lang/String;

    const-wide/32 v2, 0x40000000

    const/16 v4, 0x2710

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->a(Lcom/google/glass/util/CachedFilesManager;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    new-instance v0, Lcom/google/glass/companion/ae;

    invoke-direct {v0, p0}, Lcom/google/glass/companion/ae;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->g:Lcom/google/glass/companion/ae;

    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->g:Lcom/google/glass/companion/ae;

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/ae;->a(Lcom/google/glass/companion/b;)V

    return-void
.end method
