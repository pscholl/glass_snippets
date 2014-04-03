.class final Lcom/google/common/util/concurrent/l;
.super Lcom/google/common/util/concurrent/k;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/k;-><init>(Lcom/google/common/util/concurrent/f;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/l;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/l;->a:Ljava/lang/Object;

    return-object v0
.end method
