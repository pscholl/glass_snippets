.class public final Lcom/google/glass/util/Labs;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/glass/logging/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/glass/logging/j;->a()Lcom/google/glass/logging/i;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/Labs;->a:Lcom/google/glass/logging/i;

    return-void
.end method

.method public static a(Lcom/google/glass/util/Labs$Feature;)Z
    .locals 2

    #calls: Lcom/google/glass/util/Labs$Feature;->isSetByTest()Z
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$000(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    #calls: Lcom/google/glass/util/Labs$Feature;->getValueForTestAsBoolean()Z
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$100(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValueAsBoolean()Z

    move-result v0

    goto :goto_0

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

.method public static b(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;
    .locals 2

    #calls: Lcom/google/glass/util/Labs$Feature;->isSetByTest()Z
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$000(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    #calls: Lcom/google/glass/util/Labs$Feature;->getValueForTest()Ljava/lang/String;
    invoke-static {p0}, Lcom/google/glass/util/Labs$Feature;->access$300(Lcom/google/glass/util/Labs$Feature;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

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
