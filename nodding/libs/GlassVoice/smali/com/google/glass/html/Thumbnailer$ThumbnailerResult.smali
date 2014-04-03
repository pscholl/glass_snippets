.class final enum Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
.super Ljava/lang/Enum;
.source "Thumbnailer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/html/Thumbnailer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ThumbnailerResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

.field public static final enum FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

.field public static final enum THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

.field public static final enum THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

.field public static final enum THUMBNAIL_SKIPPED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    const-string v1, "THUMBNAIL_READY"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    .line 63
    new-instance v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    const-string v1, "THUMBNAIL_NOT_REQUIRED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    .line 69
    new-instance v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    const-string v1, "THUMBNAIL_SKIPPED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_SKIPPED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    .line 74
    new-instance v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    sget-object v1, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_READY:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_NOT_REQUIRED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->THUMBNAIL_SKIPPED:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->FAILURE:Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->$VALUES:[Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->$VALUES:[Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    invoke-virtual {v0}, [Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/html/Thumbnailer$ThumbnailerResult;

    return-object v0
.end method
