.class public Lcom/google/glass/voice/VoiceAnnotationHelper;
.super Ljava/lang/Object;
.source "VoiceAnnotationHelper.java"

# interfaces
.implements Lcom/google/glass/voice/VoiceInputActivityHelper;


# static fields
.field public static final ACTION_VOICE_ANNOTATION:Ljava/lang/String; = "com.google.glass.ACTION_VOICE_ANNOTATION"

.field public static final EXTRA_ANNOTATION_RESULT:Ljava/lang/String; = "annotation_result"

.field public static final EXTRA_AUDIO_DATA:Ljava/lang/String; = "audio_data"

.field public static final EXTRA_HEADER_MSG:Ljava/lang/String; = "header_msg"

.field public static final EXTRA_HIDE_ADDING_DIALOG:Ljava/lang/String; = "hide_adding_dialog"

.field public static final EXTRA_HIDE_HEADER:Ljava/lang/String; = "hide_header"

.field public static final EXTRA_HIDE_PROMPT:Ljava/lang/String; = "hide_prompt"

.field public static final EXTRA_PROMPT_MESSAGE:Ljava/lang/String; = "prompt_msg"

.field public static final EXTRA_WANT_AUDIO_DATA:Ljava/lang/String; = "want_audio_data"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    .line 62
    return-void
.end method


# virtual methods
.method public getAnnotationIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_VOICE_ANNOTATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v1, "want_audio_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    return-object v0
.end method

.method public getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 140
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 141
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Response was not OK, means transcription failed or was cancelled."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :goto_0
    return-object v0

    .line 145
    :cond_0
    if-nez p2, :cond_1

    .line 146
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Data intent was null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_1
    const-string v0, "annotation_result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAudioData(ILandroid/content/Intent;)[B
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 154
    const/4 v1, -0x1

    if-eq v1, p1, :cond_0

    .line 155
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Response was not OK, means transcription failed or was cancelled."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :goto_0
    return-object v0

    .line 159
    :cond_0
    if-nez p2, :cond_1

    .line 160
    sget-object v1, Lcom/google/glass/voice/VoiceAnnotationHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Data intent was null."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :cond_1
    const-string v0, "audio_data"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public startAnnotationForResult(I)V
    .locals 1
    .parameter "requestCode"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResult(IZ)V

    .line 72
    return-void
.end method

.method public startAnnotationForResult(IZ)V
    .locals 5
    .parameter "requestCode"
    .parameter "wantAudioData"

    .prologue
    .line 82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 83
    .local v1, triggerTimeMillis:J
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.glass.ACTION_VOICE_ANNOTATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "trigger_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 85
    const-string v3, "trigger_method"

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const-string v3, "want_audio_data"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    iget-object v3, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    invoke-virtual {v3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 88
    return-void
.end method

.method public startAnnotationForResultWithCustomPrompt(ILjava/lang/String;)V
    .locals 1
    .parameter "requestCode"
    .parameter "promptMsg"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResultWithCustomPrompt(IZLjava/lang/String;)V

    .line 108
    return-void
.end method

.method public startAnnotationForResultWithCustomPrompt(IZLjava/lang/String;)V
    .locals 5
    .parameter "requestCode"
    .parameter "wantAudioData"
    .parameter "promptMsg"

    .prologue
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 122
    .local v1, triggerTimeMillis:J
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.glass.ACTION_VOICE_ANNOTATION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "trigger_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 124
    const-string v3, "trigger_method"

    const/16 v4, 0xb

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v3, "want_audio_data"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 126
    const-string v3, "prompt_msg"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string v3, "hide_prompt"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceAnnotationHelper;->context:Landroid/app/Activity;

    invoke-virtual {v3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return-void
.end method
