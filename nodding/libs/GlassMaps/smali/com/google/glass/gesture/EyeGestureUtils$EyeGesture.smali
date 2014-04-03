.class public final enum Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

.field public static final enum BLINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

.field public static final enum DOFF:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

.field public static final enum DON:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

.field public static final enum DOUBLE_BLINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

.field public static final enum DOUBLE_WINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

.field public static final enum NO_GESTURE:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

.field public static final enum WINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    const-string v1, "NO_GESTURE"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->NO_GESTURE:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    const-string v1, "WINK"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->WINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    const-string v1, "DOUBLE_WINK"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DOUBLE_WINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    const-string v1, "BLINK"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->BLINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    const-string v1, "DOUBLE_BLINK"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DOUBLE_BLINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    const-string v1, "DON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DON:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    new-instance v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    const-string v1, "DOFF"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DOFF:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->NO_GESTURE:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->WINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DOUBLE_WINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->BLINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DOUBLE_BLINK:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DON:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->DOFF:Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->$VALUES:[Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;
    .locals 1

    const-class v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;
    .locals 1

    sget-object v0, Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->$VALUES:[Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    invoke-virtual {v0}, [Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/gesture/EyeGestureUtils$EyeGesture;

    return-object v0
.end method
