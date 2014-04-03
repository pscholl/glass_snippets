.class public Lcom/google/glass/util/Experiment;
.super Ljava/lang/Object;
.source "Experiment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExperimentGroup(ILandroid/content/Context;)I
    .locals 3
    .parameter "numberOfGroups"
    .parameter "context"

    .prologue
    .line 19
    new-instance v1, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    const-string v2, "android_id"

    invoke-virtual {v1, v2}, Lcom/google/glass/util/SettingsSecure;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, androidId:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    rem-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    return v1
.end method

.method public static isInExperimentGroup(IILandroid/content/Context;)Z
    .locals 2
    .parameter "group"
    .parameter "numberOfGroups"
    .parameter "context"

    .prologue
    .line 26
    if-lt p0, p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "group must be in the range 0 to numberOfGroups - 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    invoke-static {p1, p2}, Lcom/google/glass/util/Experiment;->getExperimentGroup(ILandroid/content/Context;)I

    move-result v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
