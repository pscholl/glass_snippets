.class public Lcom/google/glass/auth/AuthUtils;
.super Ljava/lang/Object;
.source "AuthUtils.java"


# static fields
.field private static final AUTH_TOKEN_HEADER:Ljava/lang/String; = "Authorization"

.field public static final AUTH_TOKEN_SPEECH_PERSONALIZATION:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/speech/personalization"

.field public static final AUTH_TOKEN_TYPE_DEFAULT:Ljava/lang/String; = "android"

.field public static final AUTH_TOKEN_TYPE_SEARCH:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/googlenow"

.field public static final AUTH_TOKEN_VIDEO_CALLS:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/glass.hangouts"

.field public static final AUTH_TOKEN_WEB_HISTORY:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/webhistory"

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final GOOGLE_LOGIN_AUTH_TOKEN_PREFIX:Ljava/lang/String; = "GoogleLogin auth="

.field private static final LEGACY_AUTH_TOKEN_HEADER:Ljava/lang/String; = "SC"

.field public static final OAUTH_SCOPE_SEARCH:Ljava/lang/String; = "https://www.googleapis.com/auth/googlenow"

.field public static final OAUTH_SCOPE_SPEECH_PERSONALIZATION:Ljava/lang/String; = "https://www.googleapis.com/auth/speech/personalization"

.field public static final OAUTH_SCOPE_VIDEO_CALLS:Ljava/lang/String; = "https://www.googleapis.com/auth/glass.hangouts"

.field public static final OAUTH_SCOPE_WEB_HISTORY:Ljava/lang/String; = "https://www.googleapis.com/auth/webhistory"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/google/glass/auth/AuthUtils;->context:Landroid/content/Context;

    .line 90
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/auth/AuthUtils;)Landroid/accounts/AccountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/auth/AuthUtils;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/auth/AuthUtils;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public createAuthHeaders()Ljava/util/Map;
    .locals 5
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
    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 189
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/glass/auth/AuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    sget-object v2, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No auth token available, cannot create auth headers."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    const/4 v0, 0x0

    .line 201
    .end local v0           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 197
    .restart local v0       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, "SC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleLogin auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public createBatchAuthToken()Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/glass/auth/AuthUtils;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0

    .line 215
    :cond_0
    new-instance v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;-><init>()V

    .line 216
    .local v0, authToken:Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;
    const/4 v2, 0x1

    iput v2, v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->type:I

    .line 217
    iput-object v1, v0, Lcom/google/googlex/glass/common/proto/BatchNano$AuthToken;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public deleteAllAccounts(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 225
    new-instance v0, Lcom/google/glass/auth/AuthUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/auth/AuthUtils$1;-><init>(Lcom/google/glass/auth/AuthUtils;Ljava/lang/Runnable;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 255
    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    const-string v0, "android"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "account"
    .parameter "authTokenType"
    .parameter "notifyAuthFailure"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "authTokenType"
    .parameter "notifyAuthFailure"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 114
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 119
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 120
    sget-object v4, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "There is no account. Cannot get auth token."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    .line 144
    :cond_0
    :goto_0
    return-object v1

    .line 128
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, authToken:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    sget-object v4, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Cannot get auth token."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v3

    .line 134
    goto :goto_0

    .line 137
    .end local v1           #authToken:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 138
    .local v2, e:Landroid/accounts/OperationCanceledException;
    sget-object v4, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error getting auth token"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :goto_1
    move-object v1, v3

    .line 144
    goto :goto_0

    .line 139
    :catch_1
    move-exception v2

    .line 140
    .local v2, e:Landroid/accounts/AuthenticatorException;
    sget-object v4, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error getting auth token"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 141
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    .line 142
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error getting auth token"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getGoogleAccount()Landroid/accounts/Account;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 169
    iget-object v6, p0, Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    if-nez v6, :cond_1

    .line 170
    sget-object v6, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Account manager was null."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v5

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 174
    :cond_1
    iget-object v6, p0, Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 175
    .local v1, accounts:[Landroid/accounts/Account;
    if-nez v1, :cond_2

    move-object v0, v5

    .line 176
    goto :goto_0

    .line 178
    :cond_2
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v2, v3

    .line 179
    .local v0, a:Landroid/accounts/Account;
    const-string v6, "com.google"

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #a:Landroid/accounts/Account;
    :cond_3
    move-object v0, v5

    .line 183
    goto :goto_0
.end method

.method public invalidateAuthToken()V
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;)V
    .locals 3
    .parameter "authTokenType"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/google/glass/auth/AuthUtils;->getAuthToken(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public restartSetupProcess(Z)V
    .locals 1
    .parameter "reboot"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/glass/auth/AuthUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/util/SetupHelper;->checkAndEnableSetup(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 267
    :cond_0
    new-instance v0, Lcom/google/glass/auth/AuthUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/auth/AuthUtils$2;-><init>(Lcom/google/glass/auth/AuthUtils;Z)V

    invoke-virtual {p0, v0}, Lcom/google/glass/auth/AuthUtils;->deleteAllAccounts(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateCredentials(Landroid/accounts/AccountManagerCallback;Ljava/lang/String;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 295
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_0

    .line 296
    sget-object v0, Lcom/google/glass/auth/AuthUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "updateCredentials: no Google account exists"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v2, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :goto_0
    return-object v4

    .line 303
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v3, options:Landroid/os/Bundle;
    const-string v0, "password"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/google/glass/auth/AuthUtils;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "android"

    move-object v5, p1

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v4

    goto :goto_0
.end method
