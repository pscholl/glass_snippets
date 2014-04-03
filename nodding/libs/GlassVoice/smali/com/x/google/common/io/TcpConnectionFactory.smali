.class public interface abstract Lcom/x/google/common/io/TcpConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/common/io/ConnectionFactory;


# virtual methods
.method public abstract createConnection(Ljava/lang/String;I)Lcom/x/google/common/io/GoogleTcpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getReceivedBytes()J
.end method

.method public abstract getSentBytes()J
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract notifyUnreliable()V
.end method

.method public abstract resetSentReceiveBytes()V
.end method
