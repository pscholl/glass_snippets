.class final enum Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
.super Ljava/lang/Enum;
.source "ScottyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/upload/ScottyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SessionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

.field public static final enum ACTIVE:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

.field public static final enum CANCELLED:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

.field public static final enum FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->ACTIVE:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    .line 28
    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    const-string v1, "FINAL"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    .line 29
    new-instance v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->CANCELLED:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->ACTIVE:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->FINAL:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->CANCELLED:Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->$VALUES:[Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->$VALUES:[Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    invoke-virtual {v0}, [Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/net/upload/ScottyHelper$SessionStatus;

    return-object v0
.end method
