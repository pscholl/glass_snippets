.class public Lcom/google/glass/net/SimplifiedHttpResponse$Builder;
.super Ljava/lang/Object;
.source "SimplifiedHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/net/SimplifiedHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private body:[B

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->statusCode:I

    .line 125
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->headers:Ljava/util/Map;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->body:[B

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/net/SimplifiedHttpResponse$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/net/SimplifiedHttpResponse;
    .locals 4

    .prologue
    .line 150
    new-instance v0, Lcom/google/glass/net/SimplifiedHttpResponse;

    iget v1, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->statusCode:I

    iget-object v2, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->headers:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->body:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/net/SimplifiedHttpResponse;-><init>(ILjava/util/Map;[B)V

    return-object v0
.end method

.method public setBody([B)Lcom/google/glass/net/SimplifiedHttpResponse$Builder;
    .locals 0
    .parameter "body"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->body:[B

    .line 146
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/net/SimplifiedHttpResponse$Builder;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/google/glass/net/SimplifiedHttpResponse$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/glass/net/SimplifiedHttpResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 141
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/glass/net/SimplifiedHttpResponse$Builder;
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 130
    iput p1, p0, Lcom/google/glass/net/SimplifiedHttpResponse$Builder;->statusCode:I

    .line 131
    return-object p0
.end method
