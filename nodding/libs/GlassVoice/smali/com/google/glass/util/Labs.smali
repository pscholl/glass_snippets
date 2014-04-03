.class public Lcom/google/glass/util/Labs;
.super Ljava/lang/Object;
.source "Labs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/Labs$Feature;
    }
.end annotation


# static fields
.field static final MAX_PROPERTY_LENGTH:I = 0x1f
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PROPERTY_PREFIX:Ljava/lang/String; = "persist.lab."
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/Labs;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    return-void
.end method

.method public static getValue(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;
    .locals 2
    .parameter "feature"

    .prologue
    .line 385
    #calls: Lcom/google/glass/util/Labs$Feature;->isSetByTest()Z
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$000(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    #calls: Lcom/google/glass/util/Labs$Feature;->getValueForTest()Ljava/lang/String;
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$300(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    .line 390
    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_1
    #calls: Lcom/google/glass/util/Labs$Feature;->getPropertyKey()Ljava/lang/String;
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$200(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isEnabled(Lcom/google/glass/util/Labs$Feature;)Z
    .locals 2
    .parameter "feature"

    .prologue
    .line 333
    #calls: Lcom/google/glass/util/Labs$Feature;->isSetByTest()Z
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$000(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    #calls: Lcom/google/glass/util/Labs$Feature;->getValueForTestAsBoolean()Z
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$100(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    .line 343
    :goto_0
    return v0

    .line 338
    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValueAsBoolean()Z

    move-result v0

    goto :goto_0

    .line 343
    :cond_1
    #calls: Lcom/google/glass/util/Labs$Feature;->getPropertyKey()Ljava/lang/String;
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$200(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValueAsBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isEnabled(Lcom/google/glass/util/Labs$Feature;Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 6
    .parameter "feature"
    .parameter "packageManager"
    .parameter "packageName"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 363
    invoke-static {p0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 373
    :goto_0
    return v1

    .line 369
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 370
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/google/glass/util/Labs;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Lab %s enabled without installing required package: %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    aput-object p2, v5, v2

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Ljava/lang/String;)V
    .locals 0
    .parameter "feature"
    .parameter "value"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 401
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 402
    #calls: Lcom/google/glass/util/Labs$Feature;->setTestValue(Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/google/glass/util/Labs$Feature;->access$400(Lcom/google/glass/util/Labs$Feature;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public static setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Z)V
    .locals 1
    .parameter "feature"
    .parameter "value"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 408
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/glass/util/Labs;->setFeatureForTesting(Lcom/google/glass/util/Labs$Feature;Ljava/lang/String;)V

    .line 409
    return-void
.end method
