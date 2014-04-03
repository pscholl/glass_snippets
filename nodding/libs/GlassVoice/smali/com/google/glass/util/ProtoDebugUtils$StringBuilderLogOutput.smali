.class Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;
.super Ljava/lang/Object;
.source "ProtoDebugUtils.java"

# interfaces
.implements Lcom/google/glass/util/ProtoDebugUtils$LogOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/ProtoDebugUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringBuilderLogOutput"
.end annotation


# static fields
.field private static final INDENT:Ljava/lang/String; = "    "


# instance fields
.field private final buffer:Ljava/lang/StringBuilder;

.field private level:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->buffer:Ljava/lang/StringBuilder;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/util/ProtoDebugUtils$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public appendLine(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 188
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->buffer:Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    return-void
.end method

.method public indent()V
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    .line 197
    return-void
.end method

.method public outdent()V
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->level:I

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/glass/util/ProtoDebugUtils$StringBuilderLogOutput;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
