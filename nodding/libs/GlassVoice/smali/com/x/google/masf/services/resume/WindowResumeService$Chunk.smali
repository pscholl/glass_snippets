.class Lcom/x/google/masf/services/resume/WindowResumeService$Chunk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/masf/services/resume/WindowResumeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Chunk"
.end annotation


# instance fields
.field length:I

.field offset:I

.field final synthetic this$0:Lcom/x/google/masf/services/resume/WindowResumeService;


# direct methods
.method public constructor <init>(Lcom/x/google/masf/services/resume/WindowResumeService;II)V
    .locals 2

    iput-object p1, p0, Lcom/x/google/masf/services/resume/WindowResumeService$Chunk;->this$0:Lcom/x/google/masf/services/resume/WindowResumeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Chunk("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/x/google/masf/services/resume/WindowResumeService;->debug(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/x/google/masf/services/resume/WindowResumeService;->access$100(Ljava/lang/String;)V

    iput p2, p0, Lcom/x/google/masf/services/resume/WindowResumeService$Chunk;->offset:I

    iput p3, p0, Lcom/x/google/masf/services/resume/WindowResumeService$Chunk;->length:I

    return-void
.end method
