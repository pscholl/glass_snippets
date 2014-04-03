.class Lcom/google/glass/voice/CommandRecognizerLoader$2;
.super Ljava/lang/Object;
.source "CommandRecognizerLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/CommandRecognizerLoader;->unloadReplacedRecognizers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/CommandRecognizerLoader;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/CommandRecognizerLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/glass/voice/CommandRecognizerLoader$2;->this$0:Lcom/google/glass/voice/CommandRecognizerLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader$2;->this$0:Lcom/google/glass/voice/CommandRecognizerLoader;

    #calls: Lcom/google/glass/voice/CommandRecognizerLoader;->destroyRecognizers()V
    invoke-static {v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->access$000(Lcom/google/glass/voice/CommandRecognizerLoader;)V

    .line 122
    return-void
.end method
