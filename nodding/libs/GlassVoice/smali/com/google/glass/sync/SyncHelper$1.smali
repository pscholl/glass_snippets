.class final Lcom/google/glass/sync/SyncHelper$1;
.super Ljava/lang/Object;
.source "SyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/glass/sync/SyncHelper$SyncSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$authority:Ljava/lang/String;

.field final synthetic val$primaryAccount:Landroid/accounts/Account;

.field final synthetic val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/SyncHelper$SyncSource;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/glass/sync/SyncHelper$1;->val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    iput-object p2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$primaryAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, extras:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    sget-object v4, Lcom/google/glass/sync/SyncHelper$SyncSource;->POWER_CONNECTED:Lcom/google/glass/sync/SyncHelper$SyncSource;

    if-ne v2, v4, :cond_1

    .line 117
    const-string v2, "force"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v4, "Requesting sync [authority=%s, syncSource=%s, extras=%s]."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    aput-object v3, v5, v7

    const/4 v3, 0x2

    aput-object v0, v5, v3

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$primaryAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 133
    return-void

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/google/glass/sync/SyncHelper$1;->val$syncSource:Lcom/google/glass/sync/SyncHelper$SyncSource;

    sget-object v4, Lcom/google/glass/sync/SyncHelper$SyncSource;->GCM:Lcom/google/glass/sync/SyncHelper$SyncSource;

    if-ne v2, v4, :cond_0

    .line 122
    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$000()Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/google/glass/sync/SyncHelper;->access$000()Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/google/glass/sync/SyncHelper$1;->val$authority:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 124
    .local v1, inBackoffMode:Z
    :goto_1
    if-nez v1, :cond_0

    .line 126
    const-string v2, "ignore_backoff"

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .end local v1           #inBackoffMode:Z
    :cond_2
    move v1, v3

    .line 122
    goto :goto_1
.end method
