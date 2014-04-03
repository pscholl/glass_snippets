.class public final Lcom/google/glass/build/BuildHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/glass/build/BuildHelper$Type;


# direct methods
.method public static a()Z
    .locals 2

    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->b()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b()Lcom/google/glass/build/BuildHelper$Type;
    .locals 1

    sget-object v0, Lcom/google/glass/build/BuildHelper;->a:Lcom/google/glass/build/BuildHelper$Type;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/build/BuildHelper$Type;->getType(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/build/BuildHelper;->a:Lcom/google/glass/build/BuildHelper$Type;

    :cond_0
    sget-object v0, Lcom/google/glass/build/BuildHelper;->a:Lcom/google/glass/build/BuildHelper$Type;

    return-object v0
.end method

.method public static c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
