.class Lcom/google/glass/app/VoiceMenuDialog$2;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/VoiceMenuDialog;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/app/VoiceMenuDialog;

.field final synthetic val$activity:Lcom/google/glass/app/GlassVoiceActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/VoiceMenuDialog;Lcom/google/glass/app/GlassVoiceActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/glass/app/VoiceMenuDialog$2;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    iput-object p2, p0, Lcom/google/glass/app/VoiceMenuDialog$2;->val$activity:Lcom/google/glass/app/GlassVoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/glass/app/VoiceMenuDialog$2;->val$activity:Lcom/google/glass/app/GlassVoiceActivity;

    iget-object v1, p0, Lcom/google/glass/app/VoiceMenuDialog$2;->this$0:Lcom/google/glass/app/VoiceMenuDialog;

    #getter for: Lcom/google/glass/app/VoiceMenuDialog;->dismissedByUser:Z
    invoke-static {v1}, Lcom/google/glass/app/VoiceMenuDialog;->access$600(Lcom/google/glass/app/VoiceMenuDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassVoiceActivity;->onDismissVoiceMenu(Z)V

    .line 183
    return-void
.end method
