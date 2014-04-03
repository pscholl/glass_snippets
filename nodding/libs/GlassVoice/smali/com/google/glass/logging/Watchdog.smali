.class public Lcom/google/glass/logging/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static reportedErrors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final serviceContext:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/glass/logging/Watchdog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/Watchdog;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/glass/logging/Watchdog;->reportedErrors:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;)V
    .locals 0
    .parameter "serviceContext"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/glass/logging/Watchdog;->serviceContext:Landroid/app/Service;

    .line 29
    return-void
.end method

.method private extractErrorLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "log"
    .parameter "errorMsg"

    .prologue
    const/16 v5, 0xa

    const/4 v4, -0x1

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, logIndex:I
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 68
    .local v3, startIndex:I
    if-ne v3, v4, :cond_0

    .line 69
    const/4 v3, 0x0

    .line 73
    :cond_0
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 74
    .local v0, endIndex:I
    if-ne v0, v4, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 77
    :cond_1
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, errorLine:Ljava/lang/String;
    return-object v1
.end method

.method private reportError(Lcom/google/glass/logging/GlassError;Ljava/lang/String;)V
    .locals 3
    .parameter "error"
    .parameter "errorLine"

    .prologue
    .line 82
    if-nez p2, :cond_0

    .line 85
    iget-object p2, p1, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    .line 88
    :cond_0
    sget-object v0, Lcom/google/glass/logging/Watchdog;->reportedErrors:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/google/glass/logging/Watchdog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" detected and already reported so doing nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-object v0, Lcom/google/glass/logging/Watchdog;->reportedErrors:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/google/glass/logging/Watchdog;->serviceContext:Landroid/app/Service;

    invoke-static {v0, p1}, Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    goto :goto_0
.end method


# virtual methods
.method public watch()V
    .locals 10

    .prologue
    .line 32
    sget-object v8, Lcom/google/glass/logging/Watchdog;->TAG:Ljava/lang/String;

    const-string v9, "Checking for errors"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v8, p0, Lcom/google/glass/logging/Watchdog;->serviceContext:Landroid/app/Service;

    invoke-static {v8}, Lcom/google/glass/logging/FeedbackBuilder;->getDmesg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, dmesg:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/util/CommandOutputCollector;->getLogcat()Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, logcat:Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/logging/GlassError;->values()[Lcom/google/glass/logging/GlassError;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/logging/GlassError;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v2, v0, v5

    .line 37
    .local v2, error:Lcom/google/glass/logging/GlassError;
    iget-object v8, v2, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 36
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    .local v4, hasError:Z
    const/4 v3, 0x0

    .line 43
    .local v3, errorLine:Ljava/lang/String;
    iget-object v8, v2, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 44
    const/4 v4, 0x1

    .line 45
    iget-object v8, v2, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-direct {p0, v1, v8}, Lcom/google/glass/logging/Watchdog;->extractErrorLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    :cond_2
    :goto_2
    if-eqz v4, :cond_0

    .line 52
    invoke-direct {p0, v2, v3}, Lcom/google/glass/logging/Watchdog;->reportError(Lcom/google/glass/logging/GlassError;Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_3
    iget-object v8, v2, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 47
    const/4 v4, 0x1

    .line 48
    iget-object v8, v2, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/google/glass/logging/Watchdog;->extractErrorLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 55
    .end local v2           #error:Lcom/google/glass/logging/GlassError;
    .end local v3           #errorLine:Ljava/lang/String;
    .end local v4           #hasError:Z
    :cond_4
    return-void
.end method
