.class public final enum Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;
.super Ljava/lang/Enum;
.source "PersonImageDownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/PersonImageDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

.field public static final enum ALWAYS_HIDDEN:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

.field public static final enum ALWAYS_VISIBLE:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

.field public static final enum DEFAULT:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    .line 36
    new-instance v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    const-string v1, "ALWAYS_VISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->ALWAYS_VISIBLE:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    .line 39
    new-instance v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    const-string v1, "ALWAYS_HIDDEN"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->ALWAYS_HIDDEN:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    sget-object v1, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->DEFAULT:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->ALWAYS_VISIBLE:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->ALWAYS_HIDDEN:Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->$VALUES:[Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->$VALUES:[Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    invoke-virtual {v0}, [Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/PersonImageDownloadTask$LabelVisibility;

    return-object v0
.end method
