.class final Lcom/google/common/reflect/h;
.super Lcom/google/common/reflect/g;


# instance fields
.field final synthetic a:Ljava/lang/reflect/TypeVariable;

.field final synthetic b:Lcom/google/common/reflect/g;

.field final synthetic c:Lcom/google/common/reflect/g;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/g;Lcom/google/common/collect/ImmutableMap;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/g;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/reflect/h;->c:Lcom/google/common/reflect/g;

    iput-object p3, p0, Lcom/google/common/reflect/h;->a:Ljava/lang/reflect/TypeVariable;

    iput-object p4, p0, Lcom/google/common/reflect/h;->b:Lcom/google/common/reflect/g;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/common/reflect/g;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/reflect/h;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/g;)Ljava/lang/reflect/Type;
    .locals 2

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/h;->a:Ljava/lang/reflect/TypeVariable;

    invoke-interface {v1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/h;->b:Lcom/google/common/reflect/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/reflect/g;->a(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/g;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method
