.class Lcom/google/glass/util/ProtoListFile$1;
.super Ljava/lang/Object;
.source "ProtoListFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/ProtoListFile;->write(Lcom/google/protobuf/nano/MessageNano;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/ProtoListFile;


# direct methods
.method constructor <init>(Lcom/google/glass/util/ProtoListFile;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    .local p0, this:Lcom/google/glass/util/ProtoListFile$1;,"Lcom/google/glass/util/ProtoListFile.1;"
    iput-object p1, p0, Lcom/google/glass/util/ProtoListFile$1;->this$0:Lcom/google/glass/util/ProtoListFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    .local p0, this:Lcom/google/glass/util/ProtoListFile$1;,"Lcom/google/glass/util/ProtoListFile.1;"
    iget-object v0, p0, Lcom/google/glass/util/ProtoListFile$1;->this$0:Lcom/google/glass/util/ProtoListFile;

    invoke-virtual {v0}, Lcom/google/glass/util/ProtoListFile;->flushWrites()V

    .line 65
    return-void
.end method
