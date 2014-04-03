.class public abstract Lcom/x/google/masf/protocol/Block;
.super Ljava/lang/Object;


# instance fields
.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/x/google/masf/protocol/Block;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setId(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/x/google/masf/protocol/Block;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
