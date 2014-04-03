.class public final enum Lcom/google/common/annotations/VisibleForTesting$Visibility;
.super Ljava/lang/Enum;
.source "VisibleForTesting.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/annotations/VisibleForTesting$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum NONE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum PACKAGE_PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

.field public static final enum PROTECTED:Lcom/google/common/annotations/VisibleForTesting$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->NONE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    .line 44
    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v3}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    .line 50
    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "PACKAGE_PRIVATE"

    invoke-direct {v0, v1, v4}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PACKAGE_PRIVATE:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    .line 56
    new-instance v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    const-string v1, "PROTECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/common/annotations/VisibleForTesting$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->PROTECTED:Lcom/google/common/annotations/VisibleForTesting$Visibility;

    .line 31
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
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/annotations/VisibleForTesting$Visibility;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;

    return-object v0
.end method

.method public static values()[Lcom/google/common/annotations/VisibleForTesting$Visibility;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/common/annotations/VisibleForTesting$Visibility;->$VALUES:[Lcom/google/common/annotations/VisibleForTesting$Visibility;

    invoke-virtual {v0}, [Lcom/google/common/annotations/VisibleForTesting$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/annotations/VisibleForTesting$Visibility;

    return-object v0
.end method
