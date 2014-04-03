.class final Lcom/google/common/collect/fl;
.super Lcom/google/common/collect/mk;


# instance fields
.field final synthetic a:Lcom/google/common/collect/fi;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fi;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/fl;->a:Lcom/google/common/collect/fi;

    invoke-direct {p0, p2}, Lcom/google/common/collect/mk;-><init>(Ljava/util/Iterator;)V

    return-void
.end method

.method private static a(Lcom/google/common/collect/fm;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/fm;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/common/collect/fm;

    invoke-static {p1}, Lcom/google/common/collect/fl;->a(Lcom/google/common/collect/fm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
