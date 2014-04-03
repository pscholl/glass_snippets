.class public final Lcom/google/glass/net/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/glass/net/g;


# direct methods
.method public constructor <init>(Lcom/google/glass/net/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/glass/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/glass/net/f;->a:Lcom/google/glass/net/g;

    return-void
.end method


# virtual methods
.method public final a([B)Lcom/google/protobuf/nano/b;
    .locals 1

    iget-object v0, p0, Lcom/google/glass/net/f;->a:Lcom/google/glass/net/g;

    invoke-interface {v0}, Lcom/google/glass/net/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/b;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/b;->mergeFrom(Lcom/google/protobuf/nano/b;[B)Lcom/google/protobuf/nano/b;

    return-object v0
.end method
