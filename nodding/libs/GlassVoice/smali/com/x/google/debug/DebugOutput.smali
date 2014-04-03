.class public Lcom/x/google/debug/DebugOutput;
.super Ljava/lang/Object;


# instance fields
.field private indent:Ljava/lang/String;

.field private lineBuffer:Ljava/lang/StringBuffer;

.field private sb:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/x/google/debug/DebugOutput;->indent:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/x/google/debug/DebugOutput;->sb:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/x/google/debug/DebugOutput;->lineBuffer:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public deindent()V
    .locals 2

    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->indent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->indent:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/debug/DebugOutput;->indent:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public indent()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/x/google/debug/DebugOutput;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/debug/DebugOutput;->indent:Ljava/lang/String;

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->sb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/debug/DebugOutput;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->sb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/x/google/debug/DebugOutput;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->lineBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->sb:Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->lineBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/x/google/debug/DebugOutput;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/x/google/debug/DebugOutput;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
