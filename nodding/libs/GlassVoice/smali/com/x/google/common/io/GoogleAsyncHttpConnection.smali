.class public interface abstract Lcom/x/google/common/io/GoogleAsyncHttpConnection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/io/GoogleHttpConnection;
.implements Lcom/x/google/common/util/Observable;


# static fields
.field public static final STATE_CLOSED:I = 0x3

.field public static final STATE_COMPLETED:I = 0x2

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_SUBMITTED:I = 0x1


# virtual methods
.method public abstract getState()I
.end method

.method public abstract submitRequest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public abstract submitRequest(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method
