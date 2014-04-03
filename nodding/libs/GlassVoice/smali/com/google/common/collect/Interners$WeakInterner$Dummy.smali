.class final enum Lcom/google/common/collect/Interners$WeakInterner$Dummy;
.super Ljava/lang/Enum;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners$WeakInterner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Dummy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/Interners$WeakInterner$Dummy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/Interners$WeakInterner$Dummy;

.field public static final enum VALUE:Lcom/google/common/collect/Interners$WeakInterner$Dummy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    new-instance v0, Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Interners$WeakInterner$Dummy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/Interners$WeakInterner$Dummy;->VALUE:Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    sget-object v1, Lcom/google/common/collect/Interners$WeakInterner$Dummy;->VALUE:Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/Interners$WeakInterner$Dummy;->$VALUES:[Lcom/google/common/collect/Interners$WeakInterner$Dummy;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/Interners$WeakInterner$Dummy;
    .locals 1
    .parameter "name"

    .prologue
    .line 97
    const-class v0, Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/Interners$WeakInterner$Dummy;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/google/common/collect/Interners$WeakInterner$Dummy;->$VALUES:[Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    invoke-virtual {v0}, [Lcom/google/common/collect/Interners$WeakInterner$Dummy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Interners$WeakInterner$Dummy;

    return-object v0
.end method
