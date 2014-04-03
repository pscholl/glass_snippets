.class public Lcom/google/glass/voice/menu/VoiceMenuRequirements;
.super Ljava/lang/Object;
.source "VoiceMenuRequirements.java"


# static fields
.field public static final HAS_PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/menu/Requirement;

.field public static final HAS_PLUS_SHARE_TARGETS:Lcom/google/glass/voice/menu/Requirement;

.field public static final HAS_VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/menu/Requirement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuRequirements$1;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/VoiceMenuRequirements$1;-><init>()V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuRequirements;->HAS_PHOTO_SHARE_TARGETS:Lcom/google/glass/voice/menu/Requirement;

    .line 28
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuRequirements$2;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/VoiceMenuRequirements$2;-><init>()V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuRequirements;->HAS_VIDEO_SHARE_TARGETS:Lcom/google/glass/voice/menu/Requirement;

    .line 44
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenuRequirements$3;

    invoke-direct {v0}, Lcom/google/glass/voice/menu/VoiceMenuRequirements$3;-><init>()V

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenuRequirements;->HAS_PLUS_SHARE_TARGETS:Lcom/google/glass/voice/menu/Requirement;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
