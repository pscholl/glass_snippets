.class public final enum Lcom/google/common/annotations/VisibleForTesting$Visibility;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum NONE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum PACKAGE_PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum PROTECTED:Lcom/google/common/annotations/VisibleForTesting$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->NONE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v3}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "PACKAGE_PRIVATE"

    invoke-direct {v0, v1, v4}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PACKAGE_PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "PROTECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/common/annotations/VisibleForTesting$Visibility;

    sget-object v1, Lcom/google/common/annotations/VisibleForTesting$Visibility;->NONE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PACKAGE_PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->$VALUES:[Lcom/google/common/annotations/VisibleForTesting$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/annotations/VisibleForTesting$Visibility;
    .locals 1

    const-class v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    return-object v0
.end method

.method public static values()[Lcom/google/common/annotations/VisibleForTesting$Visibility;
    .locals 1

    sget-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->$VALUES:[Lcom/google/common/annotations/VisibleForTesting$Visibility;

    invoke-virtual {v0}, [Lcom/google/common/annotations/VisibleForTesting$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/annotations/VisibleForTesting$Visibility;

    return-object v0
.end method
