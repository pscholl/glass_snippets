.class public final enum Lcom/google/glass/input/InputListener$DismissAction;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/input/InputListener$DismissAction;

.field public static final enum NUDGE:Lcom/google/glass/input/InputListener$DismissAction;

.field public static final enum OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

.field public static final enum SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/glass/input/InputListener$DismissAction;

    const-string v1, "SWIPE_DOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/input/InputListener$DismissAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    new-instance v0, Lcom/google/glass/input/InputListener$DismissAction;

    const-string v1, "NUDGE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/input/InputListener$DismissAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/input/InputListener$DismissAction;->NUDGE:Lcom/google/glass/input/InputListener$DismissAction;

    new-instance v0, Lcom/google/glass/input/InputListener$DismissAction;

    const-string v1, "OPTION_ITEM"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/input/InputListener$DismissAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/glass/input/InputListener$DismissAction;

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->NUDGE:Lcom/google/glass/input/InputListener$DismissAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/input/InputListener$DismissAction;->$VALUES:[Lcom/google/glass/input/InputListener$DismissAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/input/InputListener$DismissAction;
    .locals 1

    const-class v0, Lcom/google/glass/input/InputListener$DismissAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/input/InputListener$DismissAction;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/input/InputListener$DismissAction;
    .locals 1

    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->$VALUES:[Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v0}, [Lcom/google/glass/input/InputListener$DismissAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/input/InputListener$DismissAction;

    return-object v0
.end method
