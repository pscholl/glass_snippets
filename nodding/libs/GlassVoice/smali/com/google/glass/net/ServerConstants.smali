.class public Lcom/google/glass/net/ServerConstants;
.super Ljava/lang/Object;
.source "ServerConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/net/ServerConstants$Action;
    }
.end annotation


# static fields
.field private static final AUTOPUSH_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final AUTOPUSH_PATH_COMPONENT:Ljava/lang/String; = "autopush"

.field private static final CHECK_SETUP_ACCESS_SUFFIX:Ljava/lang/String; = "_/checksetupaccess"

.field private static final CLIENT_PROXY_PATH_COMPONENT:Ljava/lang/String; = "cp"

.field private static final DEV_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final DEV_PATH_COMPONENT:Ljava/lang/String; = "dev"

.field private static final GLASSWARE_PAGE_SUFFIX:Ljava/lang/String; = "glassware"

.field public static final HELP_LINK:Ljava/lang/String; = "http://www.google.com/glass/help"

.field private static final MY_GLASS_PAGE_SUFFIX:Ljava/lang/String; = "myglass"

.field private static final PROD_DOMAIN:Ljava/lang/String; = "clients2.google.com"

.field private static final PROD_FRONTEND_PREFIX:Ljava/lang/String; = "https://glass.google.com/"

.field private static final PROD_PATH_COMPONENT:Ljava/lang/String; = "glass"

.field private static final QA_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final QA_FRONTEND_PREFIX:Ljava/lang/String; = "https://glass.sandbox.google.com/qa/fe/"

.field private static final QA_PATH_COMPONENT:Ljava/lang/String; = "qa"

.field private static final SETUP_PAGE_SUFFIX:Ljava/lang/String; = "ml2"

.field private static final STAGING_DOMAIN:Ljava/lang/String; = "glass.sandbox.google.com"

.field private static final STAGING_FRONTEND_PREFIX:Ljava/lang/String; = "https://glass.sandbox.google.com/staging/fe/"

.field private static final STAGING_PATH_COMPONENT:Ljava/lang/String; = "staging"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ServerConstants;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "b"

    invoke-static {v0}, Lcom/google/glass/net/ServerConstants;->makeClientProxyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCheckSetupAccessUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_/checksetupaccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFrontendPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-string v0, "https://glass.google.com/"

    return-object v0
.end method

.method public static getGlasswareUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "glassware"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMyGlassUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "myglass"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResumableUploadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const-string v0, "uploads"

    invoke-static {v0}, Lcom/google/glass/net/ServerConstants;->makeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRootUrl()Ljava/lang/String;
    .locals 6

    .prologue
    .line 150
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->SERVER_COMPONENT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->getValue(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, componentOverride:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 153
    const-string v1, "glass.sandbox.google.com"

    .line 154
    .local v1, domain:Ljava/lang/String;
    move-object v2, v0

    .line 177
    .local v2, environmentPath:Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, rootUrl:Ljava/lang/String;
    sget-object v4, Lcom/google/glass/net/ServerConstants;->logger:Lcom/google/glass/logging/FormattingLogger;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v4, v3, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    return-object v3

    .line 155
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #environmentPath:Ljava/lang/String;
    .end local v3           #rootUrl:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->PRODUCTION_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    const-string v1, "clients2.google.com"

    .line 157
    .restart local v1       #domain:Ljava/lang/String;
    const-string v2, "glass"

    .restart local v2       #environmentPath:Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #environmentPath:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->STAGING_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 159
    const-string v1, "glass.sandbox.google.com"

    .line 160
    .restart local v1       #domain:Ljava/lang/String;
    const-string v2, "staging"

    .restart local v2       #environmentPath:Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #environmentPath:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->QA_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 162
    const-string v1, "glass.sandbox.google.com"

    .line 163
    .restart local v1       #domain:Ljava/lang/String;
    const-string v2, "qa"

    .restart local v2       #environmentPath:Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #environmentPath:Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->AUTOPUSH_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 166
    const-string v1, "glass.sandbox.google.com"

    .line 167
    .restart local v1       #domain:Ljava/lang/String;
    const-string v2, "autopush"

    .restart local v2       #environmentPath:Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #environmentPath:Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/google/glass/util/Labs$Feature;->DEV_SERVERS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v4}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 169
    const-string v1, "glass.sandbox.google.com"

    .line 170
    .restart local v1       #domain:Ljava/lang/String;
    const-string v2, "dev"

    .restart local v2       #environmentPath:Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #environmentPath:Ljava/lang/String;
    :cond_5
    const-string v1, "clients2.google.com"

    .line 174
    .restart local v1       #domain:Ljava/lang/String;
    const-string v2, "glass"

    .restart local v2       #environmentPath:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSetupPageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getFrontendPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ml2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static makeClientProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "action"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static makeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "action"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
