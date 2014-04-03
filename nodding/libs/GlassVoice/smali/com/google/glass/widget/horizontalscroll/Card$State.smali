.class public final enum Lcom/google/glass/widget/horizontalscroll/Card$State;
.super Ljava/lang/Enum;
.source "Card.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/horizontalscroll/Card;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/widget/horizontalscroll/Card$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/widget/horizontalscroll/Card$State;

.field public static final enum FOCUSED:Lcom/google/glass/widget/horizontalscroll/Card$State;

.field public static final enum LOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

.field public static final enum SETTLED:Lcom/google/glass/widget/horizontalscroll/Card$State;

.field public static final enum UNLOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/Card$State;

    const-string v1, "UNLOADED"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/horizontalscroll/Card$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->UNLOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    .line 20
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/Card$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/widget/horizontalscroll/Card$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    .line 23
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/Card$State;

    const-string v1, "FOCUSED"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/widget/horizontalscroll/Card$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    .line 26
    new-instance v0, Lcom/google/glass/widget/horizontalscroll/Card$State;

    const-string v1, "SETTLED"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/widget/horizontalscroll/Card$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->SETTLED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/glass/widget/horizontalscroll/Card$State;

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->UNLOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/widget/horizontalscroll/Card$State;->SETTLED:Lcom/google/glass/widget/horizontalscroll/Card$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->$VALUES:[Lcom/google/glass/widget/horizontalscroll/Card$State;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/widget/horizontalscroll/Card$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/horizontalscroll/Card$State;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/widget/horizontalscroll/Card$State;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/glass/widget/horizontalscroll/Card$State;->$VALUES:[Lcom/google/glass/widget/horizontalscroll/Card$State;

    invoke-virtual {v0}, [Lcom/google/glass/widget/horizontalscroll/Card$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/widget/horizontalscroll/Card$State;

    return-object v0
.end method
