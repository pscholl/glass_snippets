.class final Lcom/x/google/masf/services/TranslationService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/x/google/masf/services/TranslationService;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/x/google/masf/ServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/x/google/masf/services/TranslationService;

.field final synthetic val$closure:Lcom/x/google/masf/ServiceCallback;


# direct methods
.method constructor <init>(Lcom/x/google/masf/services/TranslationService;Lcom/x/google/masf/ServiceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/x/google/masf/services/TranslationService$1;->this$0:Lcom/x/google/masf/services/TranslationService;

    iput-object p2, p0, Lcom/x/google/masf/services/TranslationService$1;->val$closure:Lcom/x/google/masf/ServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/x/google/masf/protocol/Request;Lcom/x/google/masf/protocol/Response;)V
    .locals 4

    :try_start_0
    invoke-virtual {p2}, Lcom/x/google/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p2}, Lcom/x/google/masf/protocol/Response;->getStreamLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "translated_text data=\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "translated_text data=\""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/x/google/masf/services/TranslationService$1;->val$closure:Lcom/x/google/masf/ServiceCallback;

    invoke-interface {v1, v0}, Lcom/x/google/masf/ServiceCallback;->onRequestComplete(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/x/google/masf/services/TranslationService$1;->val$closure:Lcom/x/google/masf/ServiceCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/x/google/masf/ServiceCallback;->onRequestComplete(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public requestFailed(Lcom/x/google/masf/protocol/Request;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/x/google/masf/services/TranslationService$1;->val$closure:Lcom/x/google/masf/ServiceCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/x/google/masf/ServiceCallback;->onRequestComplete(Ljava/lang/Object;)V

    return-void
.end method
