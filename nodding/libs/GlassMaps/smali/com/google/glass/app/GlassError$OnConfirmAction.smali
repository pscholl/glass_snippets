.class public final enum Lcom/google/glass/app/GlassError$OnConfirmAction;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/app/GlassError$OnConfirmAction;

.field public static final enum GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/glass/app/GlassError$OnConfirmAction;

    const-string v1, "GO_TO_SETTINGS"

    invoke-direct {v0, v1, v2}, Lcom/google/glass/app/GlassError$OnConfirmAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/app/GlassError$OnConfirmAction;

    sget-object v1, Lcom/google/glass/app/GlassError$OnConfirmAction;->GO_TO_SETTINGS:Lcom/google/glass/app/GlassError$OnConfirmAction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/app/GlassError$OnConfirmAction;->$VALUES:[Lcom/google/glass/app/GlassError$OnConfirmAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/app/GlassError$OnConfirmAction;
    .locals 1

    const-class v0, Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/app/GlassError$OnConfirmAction;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/app/GlassError$OnConfirmAction;
    .locals 1

    sget-object v0, Lcom/google/glass/app/GlassError$OnConfirmAction;->$VALUES:[Lcom/google/glass/app/GlassError$OnConfirmAction;

    invoke-virtual {v0}, [Lcom/google/glass/app/GlassError$OnConfirmAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/app/GlassError$OnConfirmAction;

    return-object v0
.end method
