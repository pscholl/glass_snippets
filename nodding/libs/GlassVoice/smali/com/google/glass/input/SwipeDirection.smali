.class public final enum Lcom/google/glass/input/SwipeDirection;
.super Ljava/lang/Enum;
.source "SwipeDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/input/SwipeDirection;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/input/SwipeDirection;

.field public static final enum DOWN:Lcom/google/glass/input/SwipeDirection;

.field public static final enum LEFT:Lcom/google/glass/input/SwipeDirection;

.field public static final enum RIGHT:Lcom/google/glass/input/SwipeDirection;

.field public static final enum UP:Lcom/google/glass/input/SwipeDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/google/glass/input/SwipeDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/input/SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    .line 9
    new-instance v0, Lcom/google/glass/input/SwipeDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/input/SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    .line 10
    new-instance v0, Lcom/google/glass/input/SwipeDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/input/SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    .line 11
    new-instance v0, Lcom/google/glass/input/SwipeDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/input/SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/input/SwipeDirection;

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->LEFT:Lcom/google/glass/input/SwipeDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->RIGHT:Lcom/google/glass/input/SwipeDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->DOWN:Lcom/google/glass/input/SwipeDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/input/SwipeDirection;->UP:Lcom/google/glass/input/SwipeDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/input/SwipeDirection;->$VALUES:[Lcom/google/glass/input/SwipeDirection;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/input/SwipeDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 6
    const-class v0, Lcom/google/glass/input/SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/SwipeDirection;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/input/SwipeDirection;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/google/glass/input/SwipeDirection;->$VALUES:[Lcom/google/glass/input/SwipeDirection;

    invoke-virtual {v0}, [Lcom/google/glass/input/SwipeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/input/SwipeDirection;

    return-object v0
.end method
