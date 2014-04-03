.class Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;
.super Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;
.source "GlassRecognizerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/embedded/GlassRecognizerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilteredGrecoRecognizer"
.end annotation


# instance fields
.field private acceptableCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/VoiceCommand;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/voice/embedded/GlassRecognizerFactory;


# direct methods
.method public varargs constructor <init>(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;[Lcom/google/glass/voice/VoiceCommand;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "decoder"
    .parameter "commands"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;->this$0:Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/google/glass/voice/embedded/EmbeddedGlassRecognizer;-><init>(Landroid/content/Context;Lcom/google/glass/voice/embedded/EmbeddedRecognizerController$Decoder;)V

    .line 74
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;->acceptableCommands:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 2
    .parameter "str"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;->this$0:Lcom/google/glass/voice/embedded/GlassRecognizerFactory;

    #calls: Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->getCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    invoke-static {v1, p1}, Lcom/google/glass/voice/embedded/GlassRecognizerFactory;->access$000(Lcom/google/glass/voice/embedded/GlassRecognizerFactory;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    .line 80
    .local v0, command:Lcom/google/glass/voice/VoiceCommand;
    iget-object v1, p0, Lcom/google/glass/voice/embedded/GlassRecognizerFactory$FilteredGrecoRecognizer;->acceptableCommands:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    .end local v0           #command:Lcom/google/glass/voice/VoiceCommand;
    :goto_0
    return-object v0

    .restart local v0       #command:Lcom/google/glass/voice/VoiceCommand;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
