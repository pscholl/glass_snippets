.class final Lcom/google/common/collect/cv;
.super Lcom/google/common/collect/aa;


# instance fields
.field a:Lcom/google/common/collect/cp;

.field final synthetic b:Lcom/google/common/collect/cu;


# direct methods
.method constructor <init>(Lcom/google/common/collect/cu;Lcom/google/common/collect/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/cv;->b:Lcom/google/common/collect/cu;

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cp;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cp;

    iget-object v0, v0, Lcom/google/common/collect/cp;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cp;

    iget-object v0, v0, Lcom/google/common/collect/cp;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cp;

    iget-object v3, v0, Lcom/google/common/collect/cp;->a:Ljava/lang/Object;

    #calls: Lcom/google/common/collect/HashBiMap;->hash(Ljava/lang/Object;)I
    invoke-static {p1}, Lcom/google/common/collect/HashBiMap;->access$400(Ljava/lang/Object;)I

    move-result v4

    iget-object v0, p0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cp;

    iget v0, v0, Lcom/google/common/collect/cp;->b:I

    if-ne v4, v0, :cond_0

    invoke-static {p1, v3}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/cv;->b:Lcom/google/common/collect/cu;

    iget-object v0, v0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    #calls: Lcom/google/common/collect/HashBiMap;->seekByKey(Ljava/lang/Object;I)Lcom/google/common/collect/cp;
    invoke-static {v0, p1, v4}, Lcom/google/common/collect/HashBiMap;->access$500(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/cp;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v5, "value already present: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v5, v1}, Lcom/google/common/base/ai;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/cv;->b:Lcom/google/common/collect/cu;

    iget-object v0, v0, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    iget-object v0, v0, Lcom/google/common/collect/ct;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cp;

    #calls: Lcom/google/common/collect/HashBiMap;->delete(Lcom/google/common/collect/cp;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cp;)V

    new-instance v0, Lcom/google/common/collect/cp;

    iget-object v1, p0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cp;

    iget-object v1, v1, Lcom/google/common/collect/cp;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/cv;->a:Lcom/google/common/collect/cp;

    iget v2, v2, Lcom/google/common/collect/cp;->d:I

    invoke-direct {v0, p1, v4, v1, v2}, Lcom/google/common/collect/cp;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    iget-object v1, p0, Lcom/google/common/collect/cv;->b:Lcom/google/common/collect/cu;

    iget-object v1, v1, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    iget-object v1, v1, Lcom/google/common/collect/ct;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    #calls: Lcom/google/common/collect/HashBiMap;->insert(Lcom/google/common/collect/cp;)V
    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->access$800(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/cp;)V

    iget-object v0, p0, Lcom/google/common/collect/cv;->b:Lcom/google/common/collect/cu;

    iget-object v1, p0, Lcom/google/common/collect/cv;->b:Lcom/google/common/collect/cu;

    iget-object v1, v1, Lcom/google/common/collect/cu;->a:Lcom/google/common/collect/ct;

    iget-object v1, v1, Lcom/google/common/collect/ct;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    #getter for: Lcom/google/common/collect/HashBiMap;->modCount:I
    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v1

    iput v1, v0, Lcom/google/common/collect/cu;->e:I

    move-object p1, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
