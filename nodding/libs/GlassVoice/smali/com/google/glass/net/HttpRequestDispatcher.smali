.class public interface abstract Lcom/google/glass/net/HttpRequestDispatcher;
.super Ljava/lang/Object;
.source "HttpRequestDispatcher.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract postWithHeaders(Ljava/lang/String;Ljava/util/Map;[B)Lcom/google/glass/net/SimplifiedHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/glass/net/SimplifiedHttpResponse;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Ljava/util/Map;)Lcom/google/glass/net/SimplifiedHttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/glass/net/SimplifiedHttpResponse;"
        }
    .end annotation
.end method

.method public abstract putWithFile(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Ljava/lang/String;JJ)Lcom/google/glass/net/PendingHttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "JJ)",
            "Lcom/google/glass/net/PendingHttpRequest;"
        }
    .end annotation
.end method
