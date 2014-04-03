.class Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;
.super Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;
.source "GlassRecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->createCustomRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;Ljava/util/Collection;)Lcom/google/glass/voice/HotwordRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

.field final synthetic val$config:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->this$0:Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

    iput-object p6, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;-><init>(Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 8
    .parameter "phrase"

    .prologue
    .line 268
    iget-object v4, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->this$0:Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

    #calls: Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    invoke-static {v4, p1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->access$000(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 269
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    if-eqz v0, :cond_0

    .line 287
    .end local v0           #command:Lcom/google/glass/voice/VoiceCommand;
    :goto_0
    return-object v0

    .line 274
    .restart local v0       #command:Lcom/google/glass/voice/VoiceCommand;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[hotword_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v5}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    const-string v6, " "

    const-string v7, "_"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, hotword:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    iget-object v4, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-le v4, v2, :cond_1

    .line 279
    iget-object v4, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$1;->val$config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v4}, Lcom/google/glass/voice/VoiceConfig;->getCustomTags()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v2

    .line 280
    .local v3, tag:Ljava/lang/String;
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    .end local v0           #command:Lcom/google/glass/voice/VoiceCommand;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_tag_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 282
    .end local v3           #tag:Ljava/lang/String;
    .restart local v0       #command:Lcom/google/glass/voice/VoiceCommand;
    :cond_1
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    .end local v0           #command:Lcom/google/glass/voice/VoiceCommand;
    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    .restart local v0       #command:Lcom/google/glass/voice/VoiceCommand;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    .end local v1           #hotword:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
