.class public final enum Lcom/google/glass/util/ScreenOffGesture;
.super Ljava/lang/Enum;
.source "ScreenOffGesture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/ScreenOffGesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/ScreenOffGesture; = null

.field public static final ACTION_TOUCH_GESTURE:Ljava/lang/String; = "com.google.glass.action.TOUCH_GESTURE"

.field private static final EXTRA_GESTURE:Ljava/lang/String; = "gesture"

.field public static final enum GLOBAL_LOOK_UP:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum SWIPE_DOWN:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum SWIPE_UP:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum TAP:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum TWO_SWIPE_DOWN:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum TWO_SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum TWO_SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum TWO_SWIPE_UP:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum TWO_TAP:Lcom/google/glass/util/ScreenOffGesture;

.field public static final enum UNKNOWN:Lcom/google/glass/util/ScreenOffGesture;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->UNKNOWN:Lcom/google/glass/util/ScreenOffGesture;

    .line 14
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "GLOBAL_LOOK_UP"

    invoke-direct {v0, v1, v4}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->GLOBAL_LOOK_UP:Lcom/google/glass/util/ScreenOffGesture;

    .line 15
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "TAP"

    invoke-direct {v0, v1, v5}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->TAP:Lcom/google/glass/util/ScreenOffGesture;

    .line 16
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "SWIPE_DOWN"

    invoke-direct {v0, v1, v6}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_DOWN:Lcom/google/glass/util/ScreenOffGesture;

    .line 17
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "SWIPE_UP"

    invoke-direct {v0, v1, v7}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_UP:Lcom/google/glass/util/ScreenOffGesture;

    .line 18
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "SWIPE_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

    .line 19
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "SWIPE_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

    .line 20
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "TWO_TAP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->TWO_TAP:Lcom/google/glass/util/ScreenOffGesture;

    .line 21
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "TWO_SWIPE_DOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->TWO_SWIPE_DOWN:Lcom/google/glass/util/ScreenOffGesture;

    .line 22
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "TWO_SWIPE_UP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->TWO_SWIPE_UP:Lcom/google/glass/util/ScreenOffGesture;

    .line 23
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "TWO_SWIPE_LEFT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->TWO_SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

    .line 24
    new-instance v0, Lcom/google/glass/util/ScreenOffGesture;

    const-string v1, "TWO_SWIPE_RIGHT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/glass/util/ScreenOffGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->TWO_SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

    .line 11
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/glass/util/ScreenOffGesture;

    sget-object v1, Lcom/google/glass/util/ScreenOffGesture;->UNKNOWN:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/util/ScreenOffGesture;->GLOBAL_LOOK_UP:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/util/ScreenOffGesture;->TAP:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_DOWN:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_UP:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/util/ScreenOffGesture;->SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/util/ScreenOffGesture;->TWO_TAP:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/util/ScreenOffGesture;->TWO_SWIPE_DOWN:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/util/ScreenOffGesture;->TWO_SWIPE_UP:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/util/ScreenOffGesture;->TWO_SWIPE_LEFT:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/util/ScreenOffGesture;->TWO_SWIPE_RIGHT:Lcom/google/glass/util/ScreenOffGesture;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->$VALUES:[Lcom/google/glass/util/ScreenOffGesture;

    .line 27
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ScreenOffGesture;->logger:Lcom/google/glass/logging/FormattingLogger;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static clearScreenOffGesture(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 72
    const-string v0, "gesture"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static copyScreenOffGesture(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/glass/util/ScreenOffGesture;->hasScreenOffGesture(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "gesture"

    const-string v1, "gesture"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    :cond_0
    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/google/glass/util/ScreenOffGesture;
    .locals 6
    .parameter "intent"

    .prologue
    .line 47
    const-string v2, "gesture"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, name:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/google/glass/util/ScreenOffGesture;->valueOf(Ljava/lang/String;)Lcom/google/glass/util/ScreenOffGesture;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 52
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/util/ScreenOffGesture;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unknown gesture in Intent: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    sget-object v2, Lcom/google/glass/util/ScreenOffGesture;->UNKNOWN:Lcom/google/glass/util/ScreenOffGesture;

    goto :goto_0
.end method

.method public static hasScreenOffGesture(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    .line 58
    const-string v0, "gesture"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/ScreenOffGesture;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/google/glass/util/ScreenOffGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/ScreenOffGesture;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/ScreenOffGesture;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/glass/util/ScreenOffGesture;->$VALUES:[Lcom/google/glass/util/ScreenOffGesture;

    invoke-virtual {v0}, [Lcom/google/glass/util/ScreenOffGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/ScreenOffGesture;

    return-object v0
.end method
