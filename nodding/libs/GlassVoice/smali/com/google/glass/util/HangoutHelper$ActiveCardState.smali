.class public final enum Lcom/google/glass/util/HangoutHelper$ActiveCardState;
.super Ljava/lang/Enum;
.source "HangoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/HangoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActiveCardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/HangoutHelper$ActiveCardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/HangoutHelper$ActiveCardState;

.field public static final enum CONNECTING:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

.field public static final enum ERROR:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

.field public static final enum HANGING_OUT:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

.field public static final enum WAITING:Lcom/google/glass/util/HangoutHelper$ActiveCardState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/HangoutHelper$ActiveCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->CONNECTING:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    new-instance v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/util/HangoutHelper$ActiveCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->WAITING:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    new-instance v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    const-string v1, "HANGING_OUT"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/util/HangoutHelper$ActiveCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->HANGING_OUT:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    new-instance v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/util/HangoutHelper$ActiveCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->ERROR:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    sget-object v1, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->CONNECTING:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->WAITING:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->HANGING_OUT:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->ERROR:Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->$VALUES:[Lcom/google/glass/util/HangoutHelper$ActiveCardState;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/HangoutHelper$ActiveCardState;
    .locals 1
    .parameter "name"

    .prologue
    .line 84
    const-class v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/HangoutHelper$ActiveCardState;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/google/glass/util/HangoutHelper$ActiveCardState;->$VALUES:[Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    invoke-virtual {v0}, [Lcom/google/glass/util/HangoutHelper$ActiveCardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/HangoutHelper$ActiveCardState;

    return-object v0
.end method
