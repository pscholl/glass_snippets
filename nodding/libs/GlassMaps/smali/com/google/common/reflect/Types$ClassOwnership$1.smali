.class final enum Lcom/google/common/reflect/Types$ClassOwnership$1;
.super Lcom/google/common/reflect/Types$ClassOwnership;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/reflect/Types$ClassOwnership;-><init>(Ljava/lang/String;ILcom/google/common/reflect/t;)V

    return-void
.end method


# virtual methods
.method final getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
