.class public final enum Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;
.super Ljava/lang/Enum;
.source "ScottyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/upload/ScottyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

.field public static final enum ACTIVE:Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

.field public static final enum CANCELLED:Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

.field public static final enum FINAL:Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;->ACTIVE:Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    .line 65
    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    const-string v1, "FINAL"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    .line 66
    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;->CANCELLED:Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;->ACTIVE:Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;->CANCELLED:Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;->$VALUES:[Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    const-class v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;->$VALUES:[Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    invoke-virtual {v0}, [Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/net/upload/ScottyHelper$UploadStatus;

    return-object v0
.end method
