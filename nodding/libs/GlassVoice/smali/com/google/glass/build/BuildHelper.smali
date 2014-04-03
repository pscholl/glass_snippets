.class public Lcom/google/glass/build/BuildHelper;
.super Ljava/lang/Object;
.source "BuildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/build/BuildHelper$Type;
    }
.end annotation


# static fields
.field private static type:Lcom/google/glass/build/BuildHelper$Type;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getType()Lcom/google/glass/build/BuildHelper$Type;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/build/BuildHelper;->type:Lcom/google/glass/build/BuildHelper$Type;

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/build/BuildHelper$Type;->getType(Ljava/lang/String;)Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v0

    sput-object v0, Lcom/google/glass/build/BuildHelper;->type:Lcom/google/glass/build/BuildHelper$Type;

    .line 60
    :cond_0
    sget-object v0, Lcom/google/glass/build/BuildHelper;->type:Lcom/google/glass/build/BuildHelper$Type;

    return-object v0
.end method

.method public static isEng()Z
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->ENG:Lcom/google/glass/build/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isJellyBean()Z
    .locals 2

    .prologue
    .line 69
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

.method public static isUser()Z
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->USER:Lcom/google/glass/build/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUserdebug()Z
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/build/BuildHelper$Type;->USERDEBUG:Lcom/google/glass/build/BuildHelper$Type;

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->getType()Lcom/google/glass/build/BuildHelper$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/build/BuildHelper$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
