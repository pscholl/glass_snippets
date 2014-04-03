.class public final enum Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

.field public static final enum MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

.field public static final enum SMALL:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;


# instance fields
.field private resourceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3, v5}, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    new-instance v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    const-string v1, "MEDIUM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    new-array v0, v5, [Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    sget-object v1, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->SMALL:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->MEDIUM:Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->$VALUES:[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->resourceType:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;)I
    .locals 1

    iget v0, p0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->resourceType:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
    .locals 1

    const-class v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;
    .locals 1

    sget-object v0, Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->$VALUES:[Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    invoke-virtual {v0}, [Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/GlasswareIconLoadingTask$IconSize;

    return-object v0
.end method
