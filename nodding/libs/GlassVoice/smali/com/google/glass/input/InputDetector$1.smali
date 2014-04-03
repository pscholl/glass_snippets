.class Lcom/google/glass/input/InputDetector$1;
.super Ljava/lang/Object;
.source "InputDetector.java"

# interfaces
.implements Lcom/google/glass/input/PitchHelper$PitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/InputDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/input/InputDetector;


# direct methods
.method constructor <init>(Lcom/google/glass/input/InputDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelativePitchChange(F)V
    .locals 3
    .parameter "pitch"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->hasPitch:Z
    invoke-static {v1}, Lcom/google/glass/input/InputDetector;->access$000(Lcom/google/glass/input/InputDetector;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #getter for: Lcom/google/glass/input/InputDetector;->lastPitch:F
    invoke-static {v1}, Lcom/google/glass/input/InputDetector;->access$100(Lcom/google/glass/input/InputDetector;)F

    move-result v1

    sub-float v1, p1, v1

    const/high16 v2, 0x4220

    mul-float v0, v1, v2

    .line 58
    .local v0, deltaPixels:F
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #calls: Lcom/google/glass/input/InputDetector;->handleHeadScroll(F)V
    invoke-static {v1, v0}, Lcom/google/glass/input/InputDetector;->access$200(Lcom/google/glass/input/InputDetector;F)V

    .line 62
    .end local v0           #deltaPixels:F
    :goto_0
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    #setter for: Lcom/google/glass/input/InputDetector;->lastPitch:F
    invoke-static {v1, p1}, Lcom/google/glass/input/InputDetector;->access$102(Lcom/google/glass/input/InputDetector;F)F

    .line 63
    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/google/glass/input/InputDetector$1;->this$0:Lcom/google/glass/input/InputDetector;

    const/4 v2, 0x1

    #setter for: Lcom/google/glass/input/InputDetector;->hasPitch:Z
    invoke-static {v1, v2}, Lcom/google/glass/input/InputDetector;->access$002(Lcom/google/glass/input/InputDetector;Z)Z

    goto :goto_0
.end method
