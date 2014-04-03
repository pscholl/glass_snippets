.class final enum Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

.field public static final enum HIDE:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

.field public static final enum SHOW:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->SHOW:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    new-instance v0, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->HIDE:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->SHOW:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->HIDE:Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->$VALUES:[Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;
    .locals 1

    const-class v0, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;
    .locals 1

    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->$VALUES:[Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    invoke-virtual {v0}, [Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/ongoing/OngoingActivityMessage$Operation;

    return-object v0
.end method
