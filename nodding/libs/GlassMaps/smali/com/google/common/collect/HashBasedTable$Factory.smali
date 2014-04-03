.class Lcom/google/common/collect/HashBasedTable$Factory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/base/aw;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final expectedSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/collect/HashBasedTable$Factory;->expectedSize:I

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/HashBasedTable$Factory;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1

    iget v0, p0, Lcom/google/common/collect/HashBasedTable$Factory;->expectedSize:I

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
