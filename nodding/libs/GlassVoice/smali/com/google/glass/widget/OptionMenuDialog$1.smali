.class Lcom/google/glass/widget/OptionMenuDialog$1;
.super Ljava/lang/Object;
.source "OptionMenuDialog.java"

# interfaces
.implements Lcom/google/glass/widget/OptionMenuView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/OptionMenuDialog;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/widget/OptionMenuDialog$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/OptionMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/OptionMenuDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuDialog$1;->this$0:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuOptionConfirmed(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "selectedItem"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog$1;->this$0:Lcom/google/glass/widget/OptionMenuDialog;

    #getter for: Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;
    invoke-static {v0}, Lcom/google/glass/widget/OptionMenuDialog;->access$000(Lcom/google/glass/widget/OptionMenuDialog;)Lcom/google/glass/widget/OptionMenuDialog$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->onItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v0

    return v0
.end method
