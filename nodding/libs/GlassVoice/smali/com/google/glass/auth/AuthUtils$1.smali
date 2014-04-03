.class Lcom/google/glass/auth/AuthUtils$1;
.super Ljava/lang/Object;
.source "AuthUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/auth/AuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/auth/AuthUtils;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/auth/AuthUtils;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/glass/auth/AuthUtils$1;->this$0:Lcom/google/glass/auth/AuthUtils;

    iput-object p2, p0, Lcom/google/glass/auth/AuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 229
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v5, futures:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/AccountManagerFuture<*>;>;"
    iget-object v8, p0, Lcom/google/glass/auth/AuthUtils$1;->this$0:Lcom/google/glass/auth/AuthUtils;

    #getter for: Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/google/glass/auth/AuthUtils;->access$000(Lcom/google/glass/auth/AuthUtils;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 231
    .local v1, accounts:[Landroid/accounts/Account;
    invoke-static {}, Lcom/google/glass/auth/AuthUtils;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Removing %s accounts."

    new-array v10, v12, [Ljava/lang/Object;

    array-length v11, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v0, v2, v6

    .line 233
    .local v0, account:Landroid/accounts/Account;
    invoke-static {}, Lcom/google/glass/auth/AuthUtils;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Removing account: %s"

    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v10, v13

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v8, p0, Lcom/google/glass/auth/AuthUtils$1;->this$0:Lcom/google/glass/auth/AuthUtils;

    #getter for: Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;
    invoke-static {v8}, Lcom/google/glass/auth/AuthUtils;->access$000(Lcom/google/glass/auth/AuthUtils;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8, v0, v14, v14}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 238
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accounts/AccountManagerFuture;

    .line 240
    .local v4, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<*>;"
    :try_start_0
    invoke-static {}, Lcom/google/glass/auth/AuthUtils;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Account removal result: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v4}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 241
    :catch_0
    move-exception v3

    .line 242
    .local v3, e:Landroid/accounts/OperationCanceledException;
    invoke-static {}, Lcom/google/glass/auth/AuthUtils;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Account removal canceled."

    new-array v10, v13, [Ljava/lang/Object;

    invoke-interface {v8, v3, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 243
    .end local v3           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v3

    .line 244
    .local v3, e:Landroid/accounts/AuthenticatorException;
    invoke-static {}, Lcom/google/glass/auth/AuthUtils;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Account removal failed."

    new-array v10, v13, [Ljava/lang/Object;

    invoke-interface {v8, v3, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 245
    .end local v3           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v3

    .line 246
    .local v3, e:Ljava/io/IOException;
    invoke-static {}, Lcom/google/glass/auth/AuthUtils;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v8

    const-string v9, "Account removal failed."

    new-array v10, v13, [Ljava/lang/Object;

    invoke-interface {v8, v3, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 250
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<*>;"
    :cond_1
    iget-object v8, p0, Lcom/google/glass/auth/AuthUtils$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v8, :cond_2

    .line 251
    iget-object v8, p0, Lcom/google/glass/auth/AuthUtils$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 253
    :cond_2
    return-void
.end method
