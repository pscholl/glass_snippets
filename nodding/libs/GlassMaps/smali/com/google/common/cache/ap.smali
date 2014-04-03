.class final Lcom/google/common/cache/ap;
.super Lcom/google/common/cache/ae;


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/cache/ae;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/common/cache/ap;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/common/cache/ap;->b:I

    return v0
.end method
