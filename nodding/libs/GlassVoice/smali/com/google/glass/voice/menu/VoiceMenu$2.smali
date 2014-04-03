.class Lcom/google/glass/voice/menu/VoiceMenu$2;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/menu/VoiceMenu;->selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/menu/VoiceMenu;

.field final synthetic val$menuItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->val$menuItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->val$menuItems:Ljava/util/List;

    #calls: Lcom/google/glass/voice/menu/VoiceMenu;->showSecondaryMenu(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->access$200(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;)V

    .line 222
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuListener:Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$300(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$2;->this$0:Lcom/google/glass/voice/menu/VoiceMenu;

    #getter for: Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuListener:Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenu;->access$300(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/menu/VoiceMenu$VoiceMenuListener;->onShowSecondaryMenu()V

    .line 225
    :cond_0
    return-void
.end method
