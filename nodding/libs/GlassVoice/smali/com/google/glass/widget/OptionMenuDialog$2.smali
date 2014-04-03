.class Lcom/google/glass/widget/OptionMenuDialog$2;
.super Ljava/lang/Object;
.source "OptionMenuDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 126
    iput-object p1, p0, Lcom/google/glass/widget/OptionMenuDialog$2;->this$0:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/glass/widget/OptionMenuDialog$2;->this$0:Lcom/google/glass/widget/OptionMenuDialog;

    #getter for: Lcom/google/glass/widget/OptionMenuDialog;->listener:Lcom/google/glass/widget/OptionMenuDialog$Listener;
    invoke-static {v0}, Lcom/google/glass/widget/OptionMenuDialog;->access$000(Lcom/google/glass/widget/OptionMenuDialog;)Lcom/google/glass/widget/OptionMenuDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/widget/OptionMenuDialog$Listener;->onClosed()V

    .line 130
    return-void
.end method
