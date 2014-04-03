.class final Lcom/google/common/collect/es;
.super Lcom/google/common/collect/aa;

# interfaces
.implements Lcom/google/common/collect/ev;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Ljava/lang/Object;

.field final c:I

.field d:Lcom/google/common/collect/es;

.field e:Lcom/google/common/collect/ev;

.field f:Lcom/google/common/collect/ev;

.field g:Lcom/google/common/collect/es;

.field h:Lcom/google/common/collect/es;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/es;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/aa;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/es;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/collect/es;->b:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/collect/es;->c:I

    iput-object p4, p0, Lcom/google/common/collect/es;->d:Lcom/google/common/collect/es;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ev;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/es;->e:Lcom/google/common/collect/ev;

    return-object v0
.end method

.method public final a(Lcom/google/common/collect/es;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/es;->h:Lcom/google/common/collect/es;

    return-void
.end method

.method public final a(Lcom/google/common/collect/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/es;->e:Lcom/google/common/collect/ev;

    return-void
.end method

.method public final b()Lcom/google/common/collect/ev;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/es;->f:Lcom/google/common/collect/ev;

    return-object v0
.end method

.method public final b(Lcom/google/common/collect/es;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/es;->g:Lcom/google/common/collect/es;

    return-void
.end method

.method public final b(Lcom/google/common/collect/ev;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/es;->f:Lcom/google/common/collect/ev;

    return-void
.end method

.method public final c()Lcom/google/common/collect/es;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/es;->g:Lcom/google/common/collect/es;

    return-object v0
.end method

.method public final d()Lcom/google/common/collect/es;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/es;->h:Lcom/google/common/collect/es;

    return-object v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/es;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/es;->b:Ljava/lang/Object;

    return-object v0
.end method
