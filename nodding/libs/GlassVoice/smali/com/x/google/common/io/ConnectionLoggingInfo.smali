.class public interface abstract Lcom/x/google/common/io/ConnectionLoggingInfo;
.super Ljava/lang/Object;


# static fields
.field public static final PROTOCOL_HTTP:I = 0x1

.field public static final PROTOCOL_HTTPS:I = 0x2

.field public static final PROTOCOL_TCP:I = 0x0

.field public static final PROTOCOL_UNDEFINED:I = -0x1


# virtual methods
.method public abstract getConnectTime()J
.end method

.method public abstract getCreationDuration()I
.end method

.method public abstract getCreationTime()J
.end method

.method public abstract getDataLength()I
.end method

.method public abstract getProtocol()I
.end method

.method public abstract getResponseDuration()I
.end method

.method public abstract getSetting()Ljava/lang/String;
.end method
