.class public final enum Ljavax/annotation/meta/When;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Ljavax/annotation/meta/When;

.field public static final enum ALWAYS:Ljavax/annotation/meta/When;

.field public static final enum MAYBE:Ljavax/annotation/meta/When;

.field public static final enum NEVER:Ljavax/annotation/meta/When;

.field public static final enum UNKNOWN:Ljavax/annotation/meta/When;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljavax/annotation/meta/When;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Ljavax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    new-instance v0, Ljavax/annotation/meta/When;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Ljavax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/meta/When;->UNKNOWN:Ljavax/annotation/meta/When;

    new-instance v0, Ljavax/annotation/meta/When;

    const-string v1, "MAYBE"

    invoke-direct {v0, v1, v4}, Ljavax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/meta/When;->MAYBE:Ljavax/annotation/meta/When;

    new-instance v0, Ljavax/annotation/meta/When;

    const-string v1, "NEVER"

    invoke-direct {v0, v1, v5}, Ljavax/annotation/meta/When;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    const/4 v0, 0x4

    new-array v0, v0, [Ljavax/annotation/meta/When;

    sget-object v1, Ljavax/annotation/meta/When;->ALWAYS:Ljavax/annotation/meta/When;

    aput-object v1, v0, v2

    sget-object v1, Ljavax/annotation/meta/When;->UNKNOWN:Ljavax/annotation/meta/When;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/annotation/meta/When;->MAYBE:Ljavax/annotation/meta/When;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/annotation/meta/When;->NEVER:Ljavax/annotation/meta/When;

    aput-object v1, v0, v5

    sput-object v0, Ljavax/annotation/meta/When;->$VALUES:[Ljavax/annotation/meta/When;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/annotation/meta/When;
    .locals 1

    const-class v0, Ljavax/annotation/meta/When;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/annotation/meta/When;

    return-object v0
.end method

.method public static values()[Ljavax/annotation/meta/When;
    .locals 1

    sget-object v0, Ljavax/annotation/meta/When;->$VALUES:[Ljavax/annotation/meta/When;

    invoke-virtual {v0}, [Ljavax/annotation/meta/When;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/annotation/meta/When;

    return-object v0
.end method
