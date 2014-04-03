.class public abstract Lcom/google/glass/voice/PackagesChangedReceiver;
.super Ljava/lang/Object;
.source "PackagesChangedReceiver.java"


# static fields
.field private static final PACKAGE_CHANGES_ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final receiver:Lcom/google/glass/util/SafeBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/PackagesChangedReceiver;->PACKAGE_CHANGES_ACTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/glass/voice/PackagesChangedReceiver$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/PackagesChangedReceiver$1;-><init>(Lcom/google/glass/voice/PackagesChangedReceiver;)V

    iput-object v0, p0, Lcom/google/glass/voice/PackagesChangedReceiver;->receiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    return-void
.end method


# virtual methods
.method public abstract getLogger()Lcom/google/glass/logging/FormattingLogger;
.end method

.method public abstract onPackagesChanged()V
.end method

.method public final registerSelf(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 34
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .local v1, filter:Landroid/content/IntentFilter;
    sget-object v3, Lcom/google/glass/voice/PackagesChangedReceiver;->PACKAGE_CHANGES_ACTIONS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 36
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 42
    iget-object v3, p0, Lcom/google/glass/voice/PackagesChangedReceiver;->receiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v3, p1, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/glass/voice/PackagesChangedReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/PackagesChangedReceiver;->receiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    invoke-virtual {v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->isRegistered()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
