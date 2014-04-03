.class final Lcom/google/common/reflect/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/aj;


# instance fields
.field final synthetic a:Lcom/google/common/reflect/TypeToken$InterfaceSet;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$InterfaceSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/reflect/m;->a:Lcom/google/common/reflect/TypeToken$InterfaceSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/common/reflect/m;->a(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
