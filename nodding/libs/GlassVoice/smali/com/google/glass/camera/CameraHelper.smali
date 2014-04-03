.class public Lcom/google/glass/camera/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# static fields
.field public static final ACTION_PREPARE_CAMERA:Ljava/lang/String; = "com.google.glass.action.PREPARE_CAMERA"

.field public static final ACTION_RECORD_MOMENT:Ljava/lang/String; = "com.google.glass.action.MOMENT"

.field public static final ACTION_RECORD_VIDEO:Ljava/lang/String; = "com.google.glass.action.RECORD_VIDEO"

.field public static final ACTION_TAKE_PICTURE:Ljava/lang/String; = "com.google.glass.action.TAKE_PICTURE"

.field public static final ACTION_TAKE_PICTURE_FROM_SCREEN_OFF:Ljava/lang/String; = "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF"

.field public static final EXTRA_SCREENSHOT_FILE_PATH:Ljava/lang/String; = "screenshot_file_path"

.field public static final EXTRA_SHOULD_FINISH_TURN_SCREEN_OFF:Ljava/lang/String; = "should_finish_turn_screen_off"

.field public static final EXTRA_SHOULD_TAKE_PICTURE:Ljava/lang/String; = "should_take_picture"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/glass/camera/CameraHelper;->context:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public prepareCamera()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/camera/CameraHelper;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.PREPARE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public recordMoment(ZLcom/google/glass/sound/SoundManager;)V
    .locals 3
    .parameter "shouldTurnScreenOff"
    .parameter "soundManager"

    .prologue
    .line 117
    if-eqz p2, :cond_0

    .line 118
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p2, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.MOMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, recordMomentIntent:Landroid/content/Intent;
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    const-string v1, "should_take_picture"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 125
    return-void
.end method

.method public recordVideo(ZLcom/google/glass/sound/SoundManager;)V
    .locals 2
    .parameter "shouldTurnScreenOff"
    .parameter "soundManager"

    .prologue
    .line 97
    if-eqz p2, :cond_0

    .line 98
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VIDEO_START:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p2, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.RECORD_VIDEO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, recordVideoIntent:Landroid/content/Intent;
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 132
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/google/glass/camera/CameraHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method public takePicture(ZZLcom/google/glass/sound/SoundManager;Ljava/lang/String;)V
    .locals 4
    .parameter "isScreenOff"
    .parameter "shouldTurnScreenOff"
    .parameter "soundManager"
    .parameter "screenshotFilePath"

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/glass/camera/CameraHelper;->prepareCamera()V

    .line 68
    if-eqz p3, :cond_0

    .line 69
    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->PHOTO_READY:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {p3, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 74
    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF"

    .line 75
    .local v0, action:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, takePictureIntent:Landroid/content/Intent;
    const-string v2, "should_finish_turn_screen_off"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string v2, "should_take_picture"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    if-eqz p4, :cond_1

    .line 81
    const-string v2, "screenshot_file_path"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void

    .line 74
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #takePictureIntent:Landroid/content/Intent;
    :cond_2
    const-string v0, "com.google.glass.action.TAKE_PICTURE"

    goto :goto_0
.end method
