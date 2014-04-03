.class public interface abstract Lcom/x/google/common/io/GoogleHttpConnection;
.super Ljava/lang/Object;


# static fields
.field public static final HEADER_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_KEY_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_KEY_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_KEY_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_KEY_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final HEADER_KEY_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_KEY_SET_COOKIE:Ljava/lang/String; = "Set-Cookie"

.field public static final HEADER_KEY_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final HTTP_BAD_GATEWAY:I = 0x1f6

.field public static final HTTP_BAD_REQUEST:I = 0x190

.field public static final HTTP_CONFLICT:I = 0x199

.field public static final HTTP_CREATED:I = 0xc9

.field public static final HTTP_FORBIDDEN:I = 0x193

.field public static final HTTP_INTERNAL_ERROR:I = 0x1f4

.field public static final HTTP_LENGTH_REQUIRED:I = 0x19b

.field public static final HTTP_MOVED_PERM:I = 0x12d

.field public static final HTTP_MOVED_TEMP:I = 0x12e

.field public static final HTTP_MULTI_STATUS:I = 0xcf

.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_NOT_IMPLEMENTED:I = 0x1f5

.field public static final HTTP_NOT_MODIFIED:I = 0x130

.field public static final HTTP_NO_CONTENT:I = 0xcc

.field public static final HTTP_OK:I = 0xc8

.field public static final HTTP_REQUEST_TOO_LARGE:I = 0x19d

.field public static final HTTP_SEE_OTHER:I = 0x12f

.field public static final HTTP_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_TEMP_REDIRECT:I = 0x133

.field public static final HTTP_UNAUTHORIZED:I = 0x191

.field public static final HTTP_UNSUPPORTED_MEDIA_TYPE:I = 0x19f

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeaderField(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHeaderFieldKey(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLength()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getProtocolName()Ljava/lang/String;
.end method

.method public abstract getResponseCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseMessage()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isEndToEndSecure()Z
.end method

.method public abstract isHttps()Z
.end method

.method public abstract notifyTimeout()V
.end method

.method public abstract openDataInputStream()Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openDataOutputStream()Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setConnectionProperty(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
